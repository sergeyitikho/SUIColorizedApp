//
//  ContentView.swift
//  SUIColorizedApp
//
//  Created by John Doe on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValueRed = Double.random(in: 0...255)
    @State private var sliderValueBlue = Double.random(in: 0...255)
    @State private var sliderValueGreen = Double.random(in: 0...255)
    
    var body: some View {
            VStack {
                Text(String(format: "%.3f", sliderValueRed))
                SliderView(value: $sliderValueRed, foregroundColor: .red)
                Text(String(format: "%.3f", sliderValueGreen))
                SliderView(value: $sliderValueGreen, foregroundColor: .green)
                Text(String(format: "%.3f", sliderValueBlue))
                SliderView(value: $sliderValueBlue, foregroundColor: .blue)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: sliderValueRed/255, green: sliderValueGreen/255, blue: sliderValueBlue/255))
    }
}

#Preview {
    ContentView()
}
