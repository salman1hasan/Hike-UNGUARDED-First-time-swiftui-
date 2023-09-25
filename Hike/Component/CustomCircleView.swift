//
//  CustomCircleView.swift
//  Hike
//
//  Created by Salman Hasan on 9/25/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:[
                            .customSalmonLight
                    ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                        )
                    )
                .onAppear{
                    withAnimation(.linear(duration:3.0).repeatForever(autoreverses:true)){
                        isAnimateGradient.toggle()
                    }
                }
          MotionAnimationView()
        }
        .frame(width:280, height:280)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
