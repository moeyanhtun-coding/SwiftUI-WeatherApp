//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Moe Yan Htun on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(
                topColor: isNight ? .black : .blue,
                bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack{
                CityTextView(city: "Yangon")
                
                MainWeatherStatusView(
                    imageName: "cloud.sun.fill",
                    temperature: 79)
                
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
                    isNight = !isNight
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



struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient:Gradient(
            colors:[topColor,
                    bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var city: String
    var body: some View {
        Text(city)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName : String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250,height: 230)
            Text("\(temperature)º")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,50 )
    }
}
