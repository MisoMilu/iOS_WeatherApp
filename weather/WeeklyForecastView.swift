//
//  WeeklyForecastView.swift
//  MyApp
//
//  Created by Samantha Chang on R 8/10/14.
//

import SwiftUI

struct WeeklyForecastView: View {
    let  weekly_forecasts: [WeeklyRowView] = [
        .init(date: "Today", weather: Image(systemName: "sun.max.fill"), low_temp: 20, high_temp: 30),
        .init(date: "Mon", weather: Image(systemName: "cloud.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Tues", weather: Image(systemName: "cloud.drizzle.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Wed", weather: Image(systemName: "snowflake"), low_temp: 15, high_temp: 40),
        .init(date: "Thu", weather: Image(systemName: "cloud.drizzle.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Fri", weather: Image(systemName: "snowflake"), low_temp: 15, high_temp: 40)
        
        
        ]
        
        
    var body: some View {
        VStack(alignment: .leading){
            Label("10-DAY FORECAST", systemImage: "calendar")
            HStack{
                VStack(alignment: .leading, spacing: 10){
                    ForEach(weekly_forecasts) {
                        forecast in Text(forecast.date)
                        // weekly forcast is the array
                        // the first forecast is the elements of the array
                        // the second forecast is the thing you want to display each for loop
                    }
                        
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10){
                    ForEach(weekly_forecasts){
                        elements in elements.weather
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 5){
                    ForEach(weekly_forecasts){
                        elements in Text("\(elements.low_temp)°")
                    }
                }
                VStack(alignment: .leading, spacing: 15){
                    ForEach(weekly_forecasts){
                        element in element.temperature_bar
                    }
                    
                }
                VStack(alignment: .leading){
                    ForEach(weekly_forecasts){
                        elements in Text("\(elements.high_temp)°")
                    }
                }
                
            }
        }
    }
}

#Preview {
    WeeklyForecastView()
}
