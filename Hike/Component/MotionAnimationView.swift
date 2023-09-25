//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Salman Hasan on 9/25/23.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int=Int.random(in:6...12)
    @State private var isAninmating: Bool = false
    
    func randomCoordinate() -> CGFloat{
        return CGFloat.random(in:0...256)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in:4...80))
    }
    
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in:0.1...2.0))
    }
    
    func randomSpeed() ->Double{
        return Double.random(in:0.05...1.0)
    }
    
    func randomDelay() -> Double{
        return Double.random(in:0...2)
    }
    
    
    
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle, id:\.self) {item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width:randomSize())
                    .position(
                        x:randomCoordinate(),
                        y:randomCoordinate()
                    )
                    .scaleEffect(isAninmating ? randomScale():1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAninmating = true
                        }
                    })
            }
        }
        .frame(width:256, height:256)
        .mask(Circle())
        .drawingGroup()
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
       MotionAnimationView()
            .background(
                Circle()
                    .fill(.orange)
        )
    }
}
