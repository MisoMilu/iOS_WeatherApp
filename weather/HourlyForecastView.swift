//
//  HourlyForecastView.swift
//  MyApp
//
//  Created by Samantha Chang on R 8/10/14.
//

import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        
        // combines symbols and text
        VStack(alignment: .leading){
            Label("HOURLY FORECAST", systemImage: "clock")
                .font(.subheadline)
                .fontWeight(.bold)
                .opacity(0.9)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(){
                    HourlyRowView(time: "Now",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
                    HourlyRowView(time: "13",weather: Image(systemName: "sun.max.fill"), current_temp: 55)
                    HourlyRowView(time: "14",weather: Image(systemName: "sun.max.fill"), current_temp: 57)
                    HourlyRowView(time: "15",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
                    HourlyRowView(time: "16",weather: Image(systemName: "sun.max.fill"), current_temp: 51)
                    HourlyRowView(time: "17",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
                }
            }
        }
        .foregroundStyle(.white)
        .padding(.vertical, 10)
        
        // materials are natrual apple transparent backgrounds
       .background(RoundedRectangle(cornerRadius: 20)
        .fill(.blue).opacity(0.5))
        .padding(.horizontal,10)
       
    }
}

#Preview {
    HourlyForecastView()
}
