import os
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np


def stack_chart_accitdent(df, first_value, second_value, title, y_label):

    # df_year = df[df['Accident severity'] == 'Fatal']
    df_year = df
    df_year = df_year.groupby([first_value, second_value]).sum().unstack().plot(kind='bar', stacked=True, fontsize=20, y='Casualties')
    # df_year = pd.DataFrame(df_year['Country'], index=df_year['Accident year'])

    plt.title(title, fontsize=22)
    plt.ylabel(y_label, fontsize=20)

    plt.show()
    print(df_year)

def standard_chart_accident(df, title, y_label):
    plt.close("all")

    # df_year = df[df['Casualty severity'] == 'Killed']
    df_year = df
    mean = df_year.groupby(["Casualty sex"]).sum()
    df_year = df_year.groupby(["Casualty sex"]).sum().plot(kind='bar', fontsize=20, y='Casualties')
    plt.title(title, fontsize=22)
    plt.ylabel(y_label, fontsize=20)

    # df_year.plot.bar(stacked=True)
    plt.tight_layout(pad=0.4, w_pad=0.5, h_pad=1.0)

    plt.show()
    print("Mean work")
    print(mean)
    print(mean.mean())
    print(df_year)


def main():

    font = {'weight': 'bold',
            'size': 16}

    plt.rc('font', **font)

    # Accident Vehcile Data
    # path = "C:/Users/phill/Dropbox/College stuff/Masters/Year2/ENG09027 - Connected Vehicles/Assignments/Assignment2/data/uk_vehicle_accidents.csv"
    # dataframe = pd.read_csv(path)
    # standard_chart_accident(dataframe, "Gross Number of Accidents", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Accident year", "Country", "Number of Fatal Accidents in the UK per year", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Light condition", "Weather condition", "Accident Figures under different lighting and weather conditions", "Number of accidents")

    # Accident Road Data
    # path = "C:/Users/phill/Dropbox/College stuff/Masters/Year2/ENG09027 - Connected Vehicles/Assignments/Assignment2/data/uk_road_accidents.csv"
    # dataframe = pd.read_csv(path)
    # # standard_chart_accident(dataframe, "Gross Number of Accidents", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Road type", "Speed limit", "Number of Accidents in UK per Road Type", "Number of accidents")
    # # standard_chart_accident(dataframe, "Accident Figures per Junction Type", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Accident year", "Road surface", "Road surfaces per year", "Number of accidents")


    # Casuality Casuality Data
    path = "C:/Users/phill/Dropbox/College stuff/Masters/Year2/ENG09027 - Connected Vehicles/Assignments/Assignment2/data/uk_casualaty_casualaty.csv"
    dataframe = pd.read_csv(path)
    standard_chart_accident(dataframe, "Gross Number of Accidents", "Number of accidents")
    stack_chart_accitdent(dataframe, "Accident year", "Casualty severity",
                          "Number of Fatalities in the UK per year", "Number of accidents")
    stack_chart_accitdent(dataframe, "Road user by casualty class", "Casualty sex", "Road users by class and sex.", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Light condition", "Weather condition", "Accident Figures under different lighting and weather conditions", "Number of accidents")

    # Casuality Scenario Data
    # path = "C:/Users/phill/Dropbox/College stuff/Masters/Year2/ENG09027 - Connected Vehicles/Assignments/Assignment2/data/uk_scenario_casualaty.csv"
    # dataframe = pd.read_csv(path)
    # standard_chart_accident(dataframe, "Gross Number of Accidents", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Accident year", "Country", "Number of Fatal Accidents in the UK per year", "Number of accidents")
    # stack_chart_accitdent(dataframe, "Light condition", "Weather condition", "Accident Figures under different lighting and weather conditions", "Number of accidents")

main()