//
//  CustomButtonView.swift
//  Hike
//
//  Created by Salman Hasan on 9/24/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(colors:[.customWhite],
            startPoint:.top,
            endPoint:.bottom)
          )
        Circle()
                .stroke(LinearGradient(colors:[.customSalmonLight, .customGrayMedium],startPoint:.top,endPoint:.bottom), lineWidth:4)
            Image(systemName:"figure.stand")
                .fontWeight(.black)
                .font(.system(size:30))
                .foregroundStyle(
                    LinearGradient(colors:[.customGrayLight,
                        .customGrayMedium],startPoint:.top, endPoint: .bottom)
            )
        }
        .frame(width:58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
