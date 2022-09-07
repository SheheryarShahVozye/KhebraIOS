//
//  LoginScreen.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct LoginScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                
                
               
                VStack{
                    Spacer()
                    Image("Logo")
                        .scaledToFit()
                        .padding(.bottom,30)
                        
                 
                    VStack{
                        HStack{
                            Text("Login")
                                .bold()
                                .font(.system(size: 25))
                                .foregroundColor(Color("fontBlue"))
                            Spacer()
                            
                        }.padding(.vertical,20)
                        
                        HStack{
                            Text("Please enter the mobile number")
                                .font(.custom("STCRegular", size: 14))
                                .foregroundColor(Color("5F5E5E"))
                            Spacer()
                            
                        }.padding(.top)
                        LoginTextField(value: .constant(""))
                            .padding(.vertical,5)
                        
                        CustomButton(title: "Login", callback: {
                            viewRouter.currentPage = "RegisterPasswordScreen"
                        }).padding(.top)
                    }
                   
                    
                    HStack{
                        Text("Skip")
                            .fontWeight(.regular)
                            .font(.system(size: 16))
                            .foregroundColor(Color("fontBlue"))
                            .onTapGesture {
                                viewRouter.currentPage = "DashboardScreen"
                            }
                    }.padding(.top)
                    Spacer()
                    HStack{
                        Text("Don't have an account? ")
                            .fontWeight(.regular)
                            .font(.system(size: 12))
                            .foregroundColor(Color("lightgray"))
                        
                        Text("SignUp")
                            .underline()
                            .fontWeight(.regular)
                            .font(.system(size: 12))
                            .foregroundColor(Color("fontBlue"))
                            .onTapGesture {
                                viewRouter.currentPage = "SignUpScreen"
                            }
                    }.padding(.vertical,20)
                    
                }.padding(.horizontal,30)
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
