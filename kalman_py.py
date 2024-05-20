import numpy as np
import cv2

def kalman_filter(z, x, P, Q, R, A, H):
    # Predict
    x_prior = np.dot(A, x)
    P_prior = np.dot(A, np.dot(P, A.T)) + Q
    
    # Update
    y = z - np.dot(H, x_prior)
    S = np.dot(H, np.dot(P_prior, H.T)) + R
    S_inv = np.linalg.inv(S)
    K = np.dot(np.dot(P_prior, H.T), S_inv)
    x = x_prior + np.dot(K, y)
    P = P_prior - np.dot(K, np.dot(H, P_prior))
    
    return x, P

# Initial values
x_init = np.array([0.0, 0.0, 0.0, 0.0])
P_init = np.array([[1.0, 0.0, 0.0, 0.0],
                   [0.0, 1.0, 0.0, 0.0],
                   [0.0, 0.0, 1.0, 0.0],
                   [0.0, 0.0, 0.0, 1.0]])
Q = np.array([[0.1, 0.0, 0.0, 0.0],
              [0.0, 0.1, 0.0, 0.0],
              [0.0, 0.0, 0.1, 0.0],
              [0.0, 0.0, 0.0, 0.1]])
R = np.array([[0.1, 0.0],
              [0.0, 0.1]])
A = np.array([[1.0, 0.0, 1.0, 0.0],
              [0.0, 1.0, 0.0, 1.0],
              [0.0, 0.0, 1.0, 0.0],
              [0.0, 0.0, 0.0, 1.0]])
H = np.array([[1.0, 0.0, 0.0, 0.0],
              [0.0, 1.0, 0.0, 0.0]])

# Measurements
# measurements = np.array([[2.0, 1.0], [2.5, 1.5], [3.0, 2.0], [3.5, 2.5], [4.0, 3.0], [4.5, 3.5]])

measurements = []
for i in range(1, 15):
    measurements.append([2+i*0.5, 1+i*0.5])

measurements = np.array(measurements)

print("Measurements:")
print("{")
for m in measurements:
    print(f"{{ {m[0]}, {m[1]} }},")
print("}")


# Apply custom Kalman filter
x = x_init
P = P_init
out_custom = []
for z in measurements:
    x, P = kalman_filter(z, x, P, Q, R, A, H)
    out_custom.append(x[:2].tolist())

# Print custom Kalman filter results
print("Custom Kalman filter results:")
# print(out_custom)

print("{")
for m in out_custom:
    print(f"{{ {m[0]}, {m[1]} }},")
print("}")

# Setup OpenCV Kalman filter
kf = cv2.KalmanFilter(4, 2)

kf.transitionMatrix = A.astype(np.float32)
kf.measurementMatrix = H.astype(np.float32)
kf.processNoiseCov = Q.astype(np.float32)
kf.measurementNoiseCov = R.astype(np.float32)
kf.errorCovPost = P_init.astype(np.float32)
kf.statePost = x_init.astype(np.float32)

# Apply OpenCV Kalman filter
out_opencv = []
for z in measurements:
    kf.correct(z.astype(np.float32))
    predicted = kf.predict()
    out_opencv.append(predicted[:2].tolist())

# Print OpenCV Kalman filter results
# print("OpenCV Kalman filter results:")
# print(out_opencv)

# Compare results
print("Comparison:")
for i, (custom, opencv) in enumerate(zip(out_custom, out_opencv)):
    print(f"Step {i+1}: Custom: {custom}, OpenCV: {opencv}")

import matplotlib.pyplot as plt

plt.figure()
plt.plot(measurements[:, 0], measurements[:, 1], label='Measurements')
plt.plot(np.array(out_custom)[:, 0], np.array(out_custom)[:, 1], label='Custom Kalman filter')
plt.plot(np.array(out_opencv)[:, 0], np.array(out_opencv)[:, 1], label='OpenCV Kalman filter')

plt.legend()
plt.show()