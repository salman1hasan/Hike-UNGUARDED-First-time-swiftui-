//
//  SettingsView.swift
//  Hike
//
//  Created by Salman Hasan on 9/25/23.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcons: [String] = [
    "AppIcon-MagnifyingGlass",
    "AppIcon-Map",
    "AppIcon-Mushroom",
    "AppIcon-Camera",
    "AppIcon-Backpack",
    "AppIcon-Campfire"
    ]
    
    var body: some View {
        List{
            Section{
                HStack{
                Spacer()
                    Image(systemName:"laurel.leading")
                        .font(.system(size:80,weight:.black))
                    
                    VStack(spacing:-10){
                        Text("Hike")
                            .font(.system(size:66,weight:.black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName:"laurel.trailing")
                        .font(.system(size:80,weight:.black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors:[.customGrayMedium], startPoint: .top, endPoint:.bottom
                                  )
                )
                .padding(.top)
                
                VStack(spacing:8){
                    Text("Where can you find \nperfect tracks")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there.The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots, it's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,10)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
    Section(header:Text("Alternate Icons")){
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:12){
                ForEach(alternateAppIcons.indices, id:\.self){ item in
                    Button{
     print("Icon \(alternateAppIcons[item]) was pressed.")
        UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){
            error in if error != nil{
            print("Failed request to update the app's icon:\(String(describing:error?.localizedDescription))")
            }else{
            print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
            }
            }
        }label:{
            Image("\(alternateAppIcons[item])-Preview")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height:80)
                .cornerRadius(16)
                }
                .buttonStyle(.borderless)
                }
            }
        }
                Text("Choose your favorite app icon from the collection above.")
                    .frame(minWidth:0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            .listRowSeparator(.hidden)
            
            
            Section(
               header: Text("ABOUT THE APP"),
               footer: HStack{
                Spacer()
                Text("Copyright © All right reserved.")
                Spacer()
            }
                .padding(.vertical,8)
            ) {
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology",
                    rowIcon:"swift", rowContent: "Swift",
                    rowTintColor:.orange)
                
                CustomListRowView(rowLabel:"Version", rowIcon:"gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel:"Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                
                CustomListRowView(rowLabel:"Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRowView(rowLabel:"Website", rowIcon: "globe", rowContent: "https://credo.academy", rowTintColor: .indigo)
            }
        }
    }
}
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
