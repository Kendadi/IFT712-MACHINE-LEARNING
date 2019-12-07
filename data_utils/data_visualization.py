import matplotlib.pyplot as plt
import seaborn as sns
import os, sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.realpath(_file_))))
from data_utils.data_loader import DataLoader


class DataVisualization:

    def __init__(self):
        self.path = 'datasets'
        self.train_data, self.test_data, gender_submission = DataLoader().load_data()

    def describe_data(self):
        print(self.train_data.describe())

    def get_data_columns(self):
        print(self.train_data.columns)