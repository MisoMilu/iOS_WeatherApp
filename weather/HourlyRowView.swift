//
//  HourlyRowView.swift
//  MyApp
//
//  Created by Samantha Chang on R 8/10/13.
//

import SwiftUI

struct HourlyRowView: View{
    var id = UUID() // create an ID for this object fo ForEach loops
    var time: String
    var weather: Image
    var current_temp: Int
    var body: some View {
        VStack(alignment: .center, spacing: 4){
            Text(time)
            weather.font(.title2)
            Text("\(current_temp)°").font(.title3)
            
        }
        .fontWeight(.bold)
        .padding()
        .foregroundStyle(.white)
        .symbolRenderingMode(.multicolor) // make sure to make rending mode color
    }
}

#Preview {
    HourlyRowView(time: "5PM",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
}
