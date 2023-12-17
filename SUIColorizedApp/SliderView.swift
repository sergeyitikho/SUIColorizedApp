//
//  SliderView.swift
//  SUIColorizedApp
//
//  Created by John Doe on 17.12.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    var foregroundColor: Color = .red

    var body: some View {
        Slider(value: $value, in: 0...255, step: 0.01) {
            Text("Value")
        } minimumValueLabel: {
            Text("0").foregroundStyle(foregroundColor)
        } maximumValueLabel: {
            Text("255").foregroundStyle(foregroundColor)
        }
        .tint(foregroundColor)
    }
}

#Preview {
    SliderView(value: .constant(0.5))
}
