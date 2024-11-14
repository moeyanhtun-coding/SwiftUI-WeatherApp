//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Moe Yan Htun on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:Gradient(
                colors:[.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Yangon")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250,height: 230)
                    Text("76º")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom,50 )
                
                HStack(spacing: 20){
                    WeatherDayView(
                        dayOfWeek: "MON",
                        imageName: "cloud.heavyrain.fill",
                        temperature: 70)
                    
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "snowflake",
                        temperature: 55)
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "wind",
                        temperature: 55)
                    
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "cloud.drizzle.fill",
                        temperature: 65)
                    
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "sun.max.fill",
                        temperature: 80)
                    
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "cloud.bolt.rain.fill",
                        temperature: 75)
                }
                Spacer()
                Button{
                    print("Tapped")
                }
                label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
                
            }
        }
    }
}

// Custom Weather Day View
struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body : some View{
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .bold , design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
            Text("\(temperature)º")
                .font(.system(size: 25, weight: .medium , design: .default))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}


