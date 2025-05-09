# IoT Data Simulation - Environmental Monitoring

## Overview
This project simulates IoT sensor data for environmental monitoring using Python. It generates realistic environmental data (temperature, humidity, air quality) from multiple sensors and demonstrates data visualization techniques.

## Files
- `iot_data_simulation.ipynb`: Main Jupyter notebook containing the simulation code
- `iot_data.csv`: Sample output of basic sensor data (generated when you run the notebook)
- `iot_time_series_data.csv`: Sample output of time series data (generated when you run the notebook)

## Features
- Simple and advanced data generation techniques
- Time series data generation with realistic patterns
- Data visualization using Plotly
- CSV export functionality

## Requirements
- Python 3.6+
- pandas
- plotly
- Jupyter Notebook or JupyterLab

## Usage
1. Open the Jupyter notebook: `jupyter notebook iot_data_simulation.ipynb`
2. Run each cell in order to generate and visualize the data
3. The generated CSV files will be saved in the same directory

## Customization
You can customize the simulation by modifying:
- Number of sensors
- Time period for data collection
- Reading intervals
- Environmental parameter ranges

## Project Structure
The notebook is organized in a logical step-by-step approach:
1. Install and import required libraries
2. Define functions to generate IoT data
3. Generate sample data and display it
4. Save data to CSV files
5. Visualize data using various chart types
6. Generate more advanced time-series data
7. Export results