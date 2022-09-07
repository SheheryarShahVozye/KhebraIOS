//
//  TechProfileScreen.swift
//  Khebra
//
//  Created by Sheheryar on 05/09/2022.
//

import SwiftUI

struct TechProfileScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Profile")
                ScrollView{
                    VStack{
                        Group{
                            HStack{
                                ZStack{
                                    Image("plumber-with-his-arms-crossed")
                                        .shadow(radius: 1)
                                        .scaledToFit()
                                    Circle()
                                        .frame(width: 32, height: 32, alignment: .center)
                                        .foregroundColor(Color("White"))
                                        .shadow(radius: 1)
                                        .overlay(
                                            Image("cameraYellow")
                                                .scaledToFit()
                                        ).offset(x: 30, y: 35)
                                    
                                }.frame(width: 32, height: 34, alignment: .center)
                                
                            }.padding(.vertical,40)
                            VStack{
                                HStack{
                                    Image("User")
                                        .scaledToFit()
                                    Text("Name")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("5F5E5E"))
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                
                                CustomTextField(value: .constant(""), placeHolder: "Name")
                            }.padding(.top,5)
                            
                            VStack{
                                HStack{
                                    Image("Mail")
                                        .scaledToFit()
                                    Text("Email")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("5F5E5E"))
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                
                                CustomTextField(value: .constant(""), placeHolder: "Email")
                            }.padding(.top,5)
                            
                            VStack{
                                HStack{
                                    Image("mobileNo")
                                        .scaledToFit()
                                    Text("Mobile No.")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("5F5E5E"))
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                
                                CustomTextField(value: .constant(""), placeHolder: "Mobile No")
                            }.padding(.top,5)
                        }
                       
                        
                        VStack{
                            HStack{
                                Image("ID Card")
                                    .scaledToFit()
                                Text("ID/Iqama No.")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "")
                        }.padding(.top,5)
                        
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 0.5)
                            .overlay(
                                HStack{
                                    Image("thumbnail")
                                        .scaledToFit()
                                    Text("Upload photo ID")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("B2C1E3"))
                                        .fontWeight(.medium)
                                    Spacer()
                                }.padding(.horizontal)
                            )
                        
                        HStack{
                            Image("Rectangle 99")
                                .scaledToFit()
                            Spacer()
                        }.padding(.horizontal,25)
                            .padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("comNo")
                                    .scaledToFit()
                                Text("Commercial Registration No")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "")
                        }.padding(.top,5)
                        
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 0.5)
                            .overlay(
                                HStack{
                                    Image("thumbnail")
                                        .scaledToFit()
                                    Text("Upload the commercial register")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("B2C1E3"))
                                        .fontWeight(.medium)
                                    Spacer()
                                }.padding(.horizontal)
                            )
                        
                        HStack{
                            Image("Rectangle 99")
                                .scaledToFit()
                            Spacer()
                        }.padding(.horizontal,25)
                            .padding(.top,5)
                        
                        
                        
                        OrderButton(title: "Save", callback: {
                            
                        }).padding(.vertical)
                        
                    }
                    
                    
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct TechProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        TechProfileScreen()
    }
}
