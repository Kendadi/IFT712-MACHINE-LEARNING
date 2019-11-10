from sklearn.metrics import log_loss
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix
from sklearn.metrics import hinge_loss
import numpy as np

class Metrics:

    def accuracy(self, model, x, y, training):

        accuracy = round(model.score(x, y) * 100, 2)

        if training:
            print("Training accuracy", accuracy, " %")
        else:
            print("Testing accuracy", accuracy, " %")

    def log_loss(self, model, x, y, training):
        if training:
            print("Training Log loss", round(log_loss(model.predict(x), y), 2))
        else:
            print("Testing Log loss", round(log_loss(model.predict(x), y), 2))

    def confusion_matrix(self, model, x, y, training):
        plt.imshow(confusion_matrix(y, model.predict(x)), interpolation='nearest', cmap=plt.cm.Blues)
        plt.ylabel("True Values")
        plt.xlabel("Predicted Values")
        plt.xticks([])
        plt.yticks([])

        for i in range(confusion_matrix(y, model.predict(x)).shape[0]):
            for j in range(confusion_matrix(y, model.predict(x)).shape[1]):
                plt.text(j, i, str([['TN', 'FP'], ['FN', 'TP']][i][j]) + " = " + str(confusion_matrix(y, model.predict(x))[i, j]), ha="center", va="center")

        if training:
            plt.title("CONFUSION MATRIX VISUALIZATION OF THE TRAINING")
        else:
            plt.title("CONFUSION MATRIX VISUALIZATION OF THE TESTING")

        plt.show()

    def hinge_loss(self, model, x, y, training):
        y_copy = np.copy(y)
        y_copy[y_copy == 0] = -1
        pred = model.predict(x)
        pred[pred == 0] = -1

        if training:
            print("Training Hinge loss", round(hinge_loss(y_copy, pred), 2))
        else:
            print("Testing Hinge loss", round(hinge_loss(y_copy, pred), 2))