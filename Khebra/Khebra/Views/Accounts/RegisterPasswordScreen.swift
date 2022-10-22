//
//  RegisterPasswordScreen.swift
//  Khebra
//
//  Created by Sheheryar on 03/09/2022.
//

import SwiftUI

struct RegisterPasswordScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var password: String = ""
    @State var confirmPassword: String = ""
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("registerPassword")
                    .scaledToFit()
                    .padding(.vertical)
              
                VStack{
                   
                    HStack{
                        Text("Register password")
                            .bold()
                            .font(.system(size: 25))
                            .foregroundColor(Color("fontBlue"))
                        Spacer()
                        
                    }.padding(.vertical,20)
                        .padding(.horizontal,20)
                    
                    HStack{
                        Text("Please enter the password")
                            .font(.custom("STCRegular", size: 14))
                            .foregroundColor(Color("5F5E5E"))
                        Spacer()
                        
                    }.padding(.horizontal,25)
                   
                    passwordTextField(value: $password,placeHolder: "Enter Password")
                        .padding(.vertical,5)
                  
                    if viewRouter.previousPage == "SignUpScreen" {
                        passwordTextField(value: $confirmPassword,placeHolder: "Confirm Password")
                            .padding(.vertical,5)
                    }
                    
                    HStack{
                        Spacer()
                        Text("Forgot Your Password?")
                            .font(.custom("STCRegular", size: 14))
                            .foregroundColor(Color("fontBlue"))
                       
                        
                    }.padding(.top)
                        .padding(.horizontal)
                    
                    CustomButton(title: "Login", callback: {
                        if viewRouter.previousPage == "SignUpScreen" && confirmPassword ==  password {
                            let registerBody = RegisterTechnicianBody();
                            registerBody.phone = AppUtil.technicianNumber
                            registerBody.password = password
                            
                            technicianApi.registerTechnician(registerBody, success: { res in
                                viewRouter.currentPage =  "TechnicianDashboard"
                                AppUtil.user = res
                            }, failure: { _ in
                                
                            })
                            
                          
                        } else {
                            let registerBody = RegisterTechnicianBody();
                            registerBody.phone = AppUtil.technicianNumber
                            registerBody.password = password
                            viewRouter.currentPage =  "TechnicianDashboard"
                        }
                       
                    }).padding(.top)
                }.padding(.vertical,30)
                Spacer()
                HStack{
                    
                    
                    Text("Terms and Conditions")
                        .underline()
                        .fontWeight(.regular)
                        .font(.system(size: 12))
                        .foregroundColor(Color("fontBlue"))
                        .onTapGesture {
                            viewRouter.currentPage = "SignUpScreen"
                        }
                }.padding(.vertical,20)

            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct RegisterPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPasswordScreen()
    }
}
