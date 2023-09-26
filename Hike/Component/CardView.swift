//
//  CardView.swift
//  Hike
// Created by Salman Hasan on 9/24/23.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int=1
    @State private var randomNumber:Int=1
    @State private var isShowingSheet: Bool=false
    
    func randomImage(){
        randomNumber = Int.random(in:1...5)
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        ZStack{
            CustomBackgroundView()
            VStack {
                VStack(alignment:.leading) {
                    HStack {
                        Text("UNGUARDED")
                            .fontWeight(.black)
                            .font(.system(size:25))
                            .foregroundStyle(
                                LinearGradient(
                                    colors:
                                        [.customWhite],startPoint:.top,endPoint:.bottom)
                            )
                        Spacer()
                        
                        Button{
                            print("The button was pressed")
                            isShowingSheet.toggle()
                        }label:{
                            CustomButtonView()
                        }
                        .sheet(isPresented:$isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    
                    Text("UNGUARDED")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customWhite)
                }
                .padding(.horizontal,30)
                
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default,value:imageNumber)
                }
                
                Button{
                    print("The button was pressed.")
                    randomImage()
                }label:{
                    Text("Explore More")
                        .foregroundStyle(
                            LinearGradient(
                                colors:[.customSalmonLight], startPoint: .top, endPoint: .bottom
                            )
                        )
                        .shadow(color:.black.opacity(0.25), radius: 0.25, x:1, y:2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width:320,height:570)
        }
    }
    
    struct CardView_Previews: PreviewProvider {
        static var previews: some View {
            CardView()
        }
    }
