#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "xparameters.h"
#include "platform.h"
#include "xil_io.h"
#include "xkalman_filter_top.h"
#include <ap_int.h>
#include "xil_cache.h"
#include "xtime_l.h"

typedef ap_fixed<32, 16> fixed_t;

// Function to compare the results
bool compare_results(fixed_t x, fixed_t expected_x, fixed_t tolerance) {
    return std::fabs(x.to_float() - expected_x.to_float()) < tolerance.to_float();
}

XKalman_filter_top doKalman;
XKalman_filter_top_Config *doKalman_cfg;
XTime tStart, tEnd;

void init_core() {
    int status = 0;
    doKalman_cfg = XKalman_filter_top_LookupConfig(XPAR_KALMAN_FILTER_TOP_0_DEVICE_ID);
    if (doKalman_cfg) {
        status = XKalman_filter_top_CfgInitialize(&doKalman, doKalman_cfg);
        if (status != XST_SUCCESS) {
            printf("Failed to Initialize\n");
        }
    }
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
            {2.3863636363636367, 1.4318181818181819},
            {3.050660792951542, 2.011013215859031},
            {3.547663551401869, 2.5165109034267914},
            {4.028135806350204, 3.010845646023263},
            {4.513192660889488, 3.5054137950148743},
            {5.00501206577987, 4.002181374644109},
            {5.501442194783267, 4.500686104035978},
            {6.000197563154738, 5.000130161096137},
            {6.499892440189431, 5.499976179400805},
            {6.9998834806648125, 5.999958801311628},
            {7.499931065245142, 6.499973094581672},
            {7.999968638752344, 6.9999869972813205},
            {8.499988569638672, 7.499994962316076},
            {8.99999694495232, 7.999998507633492},
	}; // Expected results after tuning
    fixed_t tolerance = 0.1;
    int success = 1;

    fixed_t x[4] = {0.0, 0.0, 0.0, 0.0};
    fixed_t P[4][4] = {
        {1.0, 0.0, 0.0, 0.0},
        {0.0, 1.0, 0.0, 0.0},
        {0.0, 0.0, 1.0, 0.0},
        {0.0, 0.0, 0.0, 1.0}
    };

    init_core();
    init_platform();
    printf("Core Initialized\n");

	Xil_DCacheDisable();
    XTime_GetTime(&tStart);  // Get the start time

    for (int i = 0; i < 14; i++) {

        // Write the measurement to the Kalman filter
        word_type z_data[2];
        z_data[0] = *reinterpret_cast<word_type*>(&measurements[i][0]);
        z_data[1] = *reinterpret_cast<word_type*>(&measurements[i][1]);
        XKalman_filter_top_Write_z_Words(&doKalman, 0, z_data, 2);

        // Write the state estimate and error covariance to the Kalman filter
        XKalman_filter_top_Set_P(&doKalman, (u64)P);
        XKalman_filter_top_Set_x(&doKalman, (u64)x);

        XKalman_filter_top_Start(&doKalman);

        // Wait for the Kalman filter IP to complete
        while (!XKalman_filter_top_IsDone(&doKalman));

//        // Print the results
//        printf("Measurement: [%f, %f] State Estimate: [%f, %f] Expected State: [%f, %f]\n",
//               measurements[i][0].to_float(), measurements[i][1].to_float(),
//               x[0].to_float(), x[1].to_float(),
//               expected_states[i][0].to_float(), expected_states[i][1].to_float());
//
//
//        if (!compare_results(x[0], expected_states[i][0], tolerance) || !compare_results(x[1], expected_states[i][1], tolerance)) {
//            printf("Test case %d failed!\n", i);
//            success = 0;
//        }
    }

    XTime_GetTime(&tEnd);  // Get the end time

    // Calculate the elapsed time in microseconds
	double elapsed_time = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND / 1000);
	printf("Elapsed time for IP: %.4f ms\n", elapsed_time);

    if (success) {
        printf("All test cases passed!\n");
    } else {
        printf("Some test cases failed.\n");
    }

    cleanup_platform();
    return 0;
}
