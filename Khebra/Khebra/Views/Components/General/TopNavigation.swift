//
//  TopNavigation.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct TopNavigation: View {
    var textColor: String = "fontBlue"
    var buttonbg: String = "FEBB12"
    var titleText: String = ""
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                VStack {}
                    .padding(.top, (AppUtil.getNotch() == true ? 40 : 10 ))
                HStack{
                    
                    Image("chevron_right")
                        .resizable()
                        .frame(width: 24, height: 24, alignment: .leading)
                        .onTapGesture {
                            viewRouter.goBack()
                        }
                        //.padding(.leading,20)
                       
                        
                    Spacer()
                    Text(titleText)
                        .font(Font.custom("STC Bold", size: 18))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.regular)
                        .padding(.trailing,20)
                        //.padding(.leading)
                       
                        //.offset(x:-10)
                    Spacer()
                    
//                    Circle()
//                        .frame(width: 45, height: 45, alignment: .center)
//                        .foregroundColor(Color("White"))
//                        .shadow(radius: 0.4)
//                        .overlay(
//                          Image("Group 3797")
//                            .resizable()
//                            .frame(width: 28, height: 28, alignment: .center)
//                        )

                    
                }.padding(.vertical,30)
                    .padding(.horizontal)
            }.padding(.bottom,0)
        } .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width)
            .scaledToFit()
       
    }
}

struct TopNavigationWithBell: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    var titleText: String = ""
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                VStack {}
                    .padding(.top, (AppUtil.getNotch() == true ? 40 : 10 ))
                HStack{
                    
                    Image("chevron_right")
                        .resizable()
                        .frame(width: 24, height: 24, alignment: .leading)
                        .onTapGesture {
                            viewRouter.goBack()
                        }
                        //.padding(.leading,20)
                       
                        
                    Spacer()
                    Text(titleText)
                        .font(Font.custom("poppins", size: 18))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.regular)
                        .padding(.trailing,20)
                        //.padding(.leading)
                       
                        //.offset(x:-10)
                    Spacer()
                    
//                    Circle()
//                        .frame(width: 45, height: 45, alignment: .center)
//                        .foregroundColor(Color("White"))
//                        .shadow(radius: 0.4)
//                        .overlay(
//                          Image("Group 3797")
//                            .resizable()
//                            .frame(width: 28, height: 28, alignment: .center)
//                        )

                    
                }.padding(.vertical,30)
                    .padding(.horizontal)
            }.padding(.bottom,0)
        } .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width)
            .scaledToFit()
       
    }
}

struct TopNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigation()
    }
}
