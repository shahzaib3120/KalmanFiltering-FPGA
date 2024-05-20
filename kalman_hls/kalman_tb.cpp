#include "kalman.h"
#include <iostream>
#include <cmath>

// Function to compare the results
bool compare_results(fixed_t x, fixed_t expected_x, fixed_t tolerance) {
    return std::fabs(x.to_float() - expected_x.to_float()) < tolerance.to_float();
}

int main() {
    // Test cases
    fixed_t measurements[14][2] = {
    		{ 2.5, 1.5 },
    		{ 3.0, 2.0 },
    		{ 3.5, 2.5 },
    		{ 4.0, 3.0 },
    		{ 4.5, 3.5 },
    		{ 5.0, 4.0 },
    		{ 5.5, 4.5 },
    		{ 6.0, 5.0 },
    		{ 6.5, 5.5 },
    		{ 7.0, 6.0 },
    		{ 7.5, 6.5 },
    		{ 8.0, 7.0 },
    		{ 8.5, 7.5 },
    		{ 9.0, 8.0 },
	};
    fixed_t expected_states[14][2] = {
    		{ 2.3863636363636367, 1.4318181818181819 },
    		{ 3.050660792951542, 2.011013215859031 },
    		{ 3.547663551401869, 2.5165109034267914 },
    		{ 4.028135806350204, 3.010845646023263 },
    		{ 4.513192660889488, 3.5054137950148743 },
    		{ 5.00501206577987, 4.002181374644109 },
    		{ 5.501442194783267, 4.500686104035978 },
    		{ 6.000197563154738, 5.000130161096137 },
    		{ 6.499892440189431, 5.499976179400805 },
    		{ 6.9998834806648125, 5.999958801311628 },
    		{ 7.499931065245142, 6.499973094581672 },
    		{ 7.999968638752344, 6.9999869972813205 },
    		{ 8.499988569638672, 7.499994962316076 },
    		{ 8.99999694495232, 7.999998507633492 },
	};
    fixed_t tolerance = 0.1;

    // State estimate and error covariance
    fixed_t x[4];
    fixed_t P[4][4];

    // Initialize state estimate and error covariance
    fixed_t x_init[4] = {0.0, 0.0, 0.0, 0.0};
    fixed_t P_init[4][4] = {
        {1.0, 0.0, 0.0, 0.0},
        {0.0, 1.0, 0.0, 0.0},
        {0.0, 0.0, 1.0, 0.0},
        {0.0, 0.0, 0.0, 1.0}
    };

    bool success = true;

    // Copy initial values to state estimate and error covariance
    for (int i = 0; i < 4; i++) {
        x[i] = x_init[i];
        for (int j = 0; j < 4; j++) {
            P[i][j] = P_init[i][j];
        }
    }

    // Apply Kalman filter for each measurement
    for (int i = 0; i < 14; i++) {
        kalman_filter_top(measurements[i], x, P);

        std::cout << "Measurement: [" << measurements[i][0].to_float() << ", " << measurements[i][1].to_float() << "]"
                  << " State Estimate: [" << x[0].to_float() << ", " << x[1].to_float() << "]"
                  << " Expected State: [" << expected_states[i][0].to_float() << ", " << expected_states[i][1].to_float() << "]" << std::endl;

        if (!compare_results(x[0], expected_states[i][0], tolerance) || !compare_results(x[1], expected_states[i][1], tolerance)) {
            std::cout << "Test case " << i << " failed!" << std::endl;
            success = false;
        }
    }

    if (success) {
        std::cout << "All test cases passed!" << std::endl;
    } else {
        std::cout << "Some test cases failed." << std::endl;
    }

    return 0;
}
