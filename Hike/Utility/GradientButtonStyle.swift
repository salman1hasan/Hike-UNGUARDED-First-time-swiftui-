//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Salman Hasan on 9/25/23.
//

import Foundation
import SwiftUI

struct GradientButton:ButtonStyle{
    func makeBody(configuration:Configuration)-> some View{
       configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                configuration.isPressed ?
                
                LinearGradient(colors: [.customWhite],startPoint: .top,
                endPoint:.bottom)
                :
                
                LinearGradient(colors: [.customWhite],startPoint: .top,
                endPoint:.bottom)
            )
            .cornerRadius(40)
    }
}
