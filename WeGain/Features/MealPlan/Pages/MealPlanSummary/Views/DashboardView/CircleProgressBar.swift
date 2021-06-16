//
//  CircleProgressBar.swift
//  WeGain
//
//  Created by Andrean Lay on 15/06/21.
//

import SwiftUI

struct CircleProgressBar: View {
    @EnvironmentObject private var planSummary: PlanSummary
    
    var value: Int
    var maxValue: Int
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green]), center: .center)
                .rotationEffect(.degrees(270))
                .mask(
                    GeometryReader { geo in
                        ZStack {
                            Circle()
                                .stroke(lineWidth: 10)
                                .opacity(0.3)
                                .foregroundColor(.green)
                            if planSummary.eatenCals.0 != 0 {
                                Circle()
                                    .trim(from: 0.0, to: CGFloat(min(planSummary.eatenCals.0 / planSummary.eatenCals.1, 1.0)))
                                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    
                                    .rotationEffect(Angle(degrees: 280.0))
                                    .animation(.linear)
                            }
                        }
                        .frame(width: geo.size.width * 0.85, height: geo.size.height * 0.85, alignment: .center)
                        .offset(x: 7, y: 7)
                    }
                )
            VStack {
                Text(String(format: "%.0f", planSummary.eatenCals.1 - planSummary.eatenCals.0))
                    .font(.subheadline)
                    .bold()
                Text("KCal left")
                    .font(.subheadline)
                    .bold()
            }
            .foregroundColor(.white)
            .offset(x: -4, y: -4)
        }
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressBar(value: 23, maxValue: 100)
    }
}
