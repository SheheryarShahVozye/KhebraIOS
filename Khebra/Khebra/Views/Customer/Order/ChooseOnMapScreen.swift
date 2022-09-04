//
//  ChooseOnMapScreen.swift
//  Khebra
//
//  Created by Sheheryar on 03/09/2022.
//

import SwiftUI

struct ChooseOnMapScreen: View {
    var body: some View {
        ZStack{
            Image("map")
                .resizable()
                .scaledToFit()
            VStack{
                HStack{
                    Image("chevron_right")
                       .scaledToFit()
                    
                    RoundedRectangle(cornerRadius: 5)
                         .frame(width: UIScreen.main.bounds.width - 120, height: 45, alignment: .center)
                         
                         .foregroundColor(Color("White"))
                         .shadow(radius: 1)
                         .overlay(
                            HStack{
                                TextField("", text: .constant(""))
                            }.padding(.leading)
                         )
                    Image("Group 1178")
                        .scaledToFit()
                }.padding(.horizontal)
                    .padding(.top,50)
                Spacer()
                
                OrderButton(title: "Choose the current location", callback: {
                    
                }).padding(.vertical)
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
    }
}

struct ChooseOnMapScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseOnMapScreen()
    }
}
