# ECG Signal Processing MATLAB GUI

This project features a MATLAB GUI developed for the processing and analysis of ECG signals. The GUI includes capabilities for Fast Fourier Transform (FFT), navigation, and real-time signal filtering.

## Features

- **Fast Fourier Transform (FFT)**
- **Full Navigation Capabilities**
  - Zoom In/Out
  - File Browsing
- **Real-Time Signal Filtering**
  - Low Pass Filter
  - High Pass Filter
  - Band Pass Filter
- **Play/Stop Toggle Button**

## Description

This MATLAB GUI is designed for ECG signal processing and supports loading any ECG .csv file where the first column is the time step (x-axis) and the second column is the amplitude (y-axis), without column headers. Users can navigate through the ECG signal using zoom functions, apply various filtering methods, and perform FFT to analyze the signal in the frequency domain.

## Usage

1. **Browse Signal**: Open an ECG .csv file.
2. **Zoom In/Out**: Use the zoom buttons to navigate through the signal.
3. **Filtering**: Apply Low Pass, High Pass, or Band Pass filters to the signal.
4. **FFT**: Perform Fast Fourier Transform to view the frequency domain representation.
5. **Play/Stop**: Toggle between playing and stopping the signal analysis.

## Screenshots

![GUI image 1](https://github.com/omarelansary/ecg-signal-analyzer/assets/73857229/ff141785-f2c8-48d7-a7a2-17665496e6c2)

![GUI image 2](https://github.com/omarelansary/ecg-signal-analyzer/assets/73857229/635e3fc3-737f-4238-a65d-c61836587d24)

![GUI image 3](https://github.com/omarelansary/ecg-signal-analyzer/assets/73857229/abbfcddd-9f66-484e-b7d0-010277130d87)


## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/omarelansary/ecg-signal-analyzer.git
   ```
2. Open MATLAB and navigate to the project directory.
3. Run the main script:
   ```bash
   run('GUI.m')
   ```

