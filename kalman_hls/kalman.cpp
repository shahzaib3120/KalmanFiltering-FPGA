#include "kalman.h"
#include "ap_int.h"

// Kalman filter function
void kalman_filter(
    fixed_t z[2],    // Measurement input [z_x, z_y]
    fixed_t x[4],    // State estimate output [x_x, x_y, v_x, v_y]
    fixed_t P[4][4], // Error covariance output
    fixed_t Q[4][4], // Process noise covariance
    fixed_t R[2][2], // Measurement noise covariance
    fixed_t A[4][4], // State transition matrix
    fixed_t H[2][4]  // Measurement matrix
)
{
#pragma HLS inline

	// Predict step
	fixed_t x_prior[4];
	fixed_t P_prior[4][4];
	for (int i = 0; i < 4; i++) {
	    x_prior[i] = 0;
	    for (int j = 0; j < 4; j++) {
	        x_prior[i] += A[i][j] * x[j];
	    }
	}

	for (int i = 0; i < 4; i++) {
	    for (int j = 0; j < 4; j++) {
	        P_prior[i][j] = 0;
	        for (int k = 0; k < 4; k++) {
	            P_prior[i][j] += A[i][k] * P[k][j];
	        }
	    }
	}

	for (int i = 0; i < 4; i++) {
	    for (int j = 0; j < 4; j++) {
	        P_prior[i][j] += Q[i][j];
	    }
	}

	// Update step
	fixed_t y[2];
	for (int i = 0; i < 2; i++) {
	    y[i] = z[i];
	    for (int j = 0; j < 4; j++) {
	        y[i] -= H[i][j] * x_prior[j];
	    }
	}

	fixed_t S[2][2];
	for (int i = 0; i < 2; i++) {
	    for (int j = 0; j < 2; j++) {
	        S[i][j] = 0;
	        for (int k = 0; k < 4; k++) {
	            S[i][j] += H[i][k] * P_prior[k][j];
	        }
	        S[i][j] += R[i][j];
	    }
	}

	// Compute the inverse of S
	fixed_t det_S = S[0][0] * S[1][1] - S[0][1] * S[1][0];
	fixed_t S_inv[2][2];
	S_inv[0][0] = S[1][1] / det_S;
	S_inv[0][1] = -S[0][1] / det_S;
	S_inv[1][0] = -S[1][0] / det_S;
	S_inv[1][1] = S[0][0] / det_S;

	fixed_t K[4][2];
	for (int i = 0; i < 4; i++) {
	    for (int j = 0; j < 2; j++) {
	        K[i][j] = 0;
	        for (int k = 0; k < 4; k++) {
	            for (int l = 0; l < 2; l++) {
	                K[i][j] += P_prior[i][k] * H[l][k] * S_inv[l][j];
	            }
	        }
	    }
	}

	for (int i = 0; i < 4; i++) {
	    for (int j = 0; j < 2; j++) {
	        x[i] += K[i][j] * y[j];
	    }
	}

	fixed_t temp[4][4];
	for (int i = 0; i < 4; i++) {
	    for (int j = 0; j < 4; j++) {
	        temp[i][j] = 0;
	        for (int k = 0; k < 2; k++) {
	            temp[i][j] += K[i][k] * H[k][j];
	        }
	    }
	}

	for (int i = 0; i < 4; i++) {
	    for (int j = 0; j < 4; j++) {
	        P[i][j] = P_prior[i][j] - temp[i][j];
	    }
	}


}

// Top-level function for testing
void kalman_filter_top(
    fixed_t z[2],   // Measurement input [z_x, z_y]
    fixed_t x[4],   // State estimate output [x_x, x_y, v_x, v_y]
    fixed_t P[4][4] // Error covariance output
)
{
#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = z bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = x bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = P bundle = CONTROL_BUS

#pragma HLS INTERFACE m_axi offset = slave port = x bundle = hostmem depth = 128
#pragma HLS INTERFACE m_axi offset = slave port = P bundle = hostmem depth = 128

    // Kalman filter parameters (these can be tuned)
    fixed_t Q[4][4] = {
        {0.1, 0.0, 0.0, 0.0},
        {0.0, 0.1, 0.0, 0.0},
        {0.0, 0.0, 0.1, 0.0},
        {0.0, 0.0, 0.0, 0.1}}; // Process noise covariance
    fixed_t R[2][2] = {
        {0.1, 0.0},
        {0.0, 0.1}}; // Measurement noise covariance
    fixed_t A[4][4] = {
        {1.0, 0.0, 1.0, 0.0},
        {0.0, 1.0, 0.0, 1.0},
        {0.0, 0.0, 1.0, 0.0},
        {0.0, 0.0, 0.0, 1.0}}; // State transition matrix
    fixed_t H[2][4] = {
        {1.0, 0.0, 0.0, 0.0},
        {0.0, 1.0, 0.0, 0.0}}; // Measurement matrix

    // Initialize state estimate and error covariance
    static fixed_t x_init[4] = {0.0, 0.0, 0.0, 0.0};
    static fixed_t P_init[4][4] = {
        {1.0, 0.0, 0.0, 0.0},
        {0.0, 1.0, 0.0, 0.0},
        {0.0, 0.0, 1.0, 0.0},
        {0.0, 0.0, 0.0, 1.0}};

    kalman_filter(z, x_init, P_init, Q, R, A, H);

    // Update output variables
    for (int i = 0; i < 4; i++)
    {
        x[i] = x_init[i];
        for (int j = 0; j < 4; j++)
        {
            P[i][j] = P_init[i][j];
        }
    }
}
