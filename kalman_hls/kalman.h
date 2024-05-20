#ifndef KALMAN_FILTER_H
#define KALMAN_FILTER_H

#include "ap_fixed.h"

// Define the types
typedef ap_fixed<32, 16> fixed_t;

void kalman_filter(
    fixed_t z[2],       // Measurement input [z_x, z_y]
    fixed_t x[4],       // State estimate output [x_x, x_y, v_x, v_y]
    fixed_t P[4][4],    // Error covariance output
    fixed_t Q[4][4],    // Process noise covariance
    fixed_t R[2][2],    // Measurement noise covariance
    fixed_t A[4][4],    // State transition matrix
    fixed_t H[2][4]     // Measurement matrix
);

void kalman_filter_top(
    fixed_t z[2],       // Measurement input [z_x, z_y]
    fixed_t x[4],       // State estimate output [x_x, x_y, v_x, v_y]
    fixed_t P[4][4]     // Error covariance output
);

#endif // KALMAN_FILTER_H
