//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Salman Hasan on 9/24/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
           
            
            LinearGradient(
                colors:[
                    .customGrayMedium],
                startPoint:.top,
                endPoint:.bottom
                )
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
