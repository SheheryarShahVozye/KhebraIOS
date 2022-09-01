//
//  Profile.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Profile")
                ScrollView{
                    VStack{
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
                        
                        VStack{
                            HStack{
                                Image("address")
                                    .scaledToFit()
                                Text("Address")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "Enter your Address")
                        }.padding(.top,5)
                        
                        
                        
                        HStack{
                            Image("bellIcon")
                                .scaledToFit()
                            Text("Notifications and offers")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color("5F5E5E"))
                            
                            Spacer()
                            Toggle(isOn: .constant(false)) {
                                
                            }   .labelsHidden()
                                .tint(Color("buttonbg"))
                            
                            
                        }.padding(.horizontal,30)
                            .padding(.top)
                        
                        HStack{
                            Image("language")
                                .scaledToFit()
                            Text("Language")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color("5F5E5E"))
                            
                            Spacer()
                            Text("EN")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color("B2C1E3"))
                            
                            
                        }.padding(.horizontal,30)
                            .padding(.top)
                        
                        CustomButton(title: "Save", callback: {
                            
                        }).padding(.vertical)
                        
                    }
                    
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
