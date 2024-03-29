//
//  SignUpScreen.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct SignUpScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var textNumber: String = ""
    @State var togglepopup: Bool = false
    @State var errorMessage: String = ""
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
                            Text("Sign Up")
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
                        LoginTextField(value: $textNumber)
                            .padding(.vertical,5)
                        
                        CustomButtonSignup(title: "Sign Up as User", callback: {
                            let object = RegisterBody()
                            object.phone = textNumber
                           
                            customerApi.registerCustomer(object, success: { res in
                                AppUtil.registerResponse = res
                                AppUtil.otp = res.otp
                                viewRouter.currentPage = "VerificationScreen"
                            }, failure: { f in
                                errorMessage = f
                                togglepopup.toggle()
                            })
                            
                        }).padding(.top)
                        
                       
                    }
                   
                    
//                    HStack{
//                        Text("Skip")
//                            .fontWeight(.regular)
//                            .font(.system(size: 16))
//                            .foregroundColor(Color("fontBlue"))
//                    }.padding(.top)
                    Spacer()
                    HStack{
                        Text("Don't have an account? ")
                            .fontWeight(.regular)
                            .font(.system(size: 12))
                            .foregroundColor(Color("lightgray"))
                        
                        Text("Login")
                            .underline()
                            .fontWeight(.regular)
                            .font(.system(size: 12))
                            .foregroundColor(Color("fontBlue"))
                    }.padding(.vertical,30)
                    
                }.padding(.horizontal,30)
            }
            
            if togglepopup {
                ZStack{
                    
                    VStack {}
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("000000"))
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.6)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 330, alignment: .center)
                        .foregroundColor(Color("B2C1E3"))
                        .shadow(color: Color("gray").opacity(0.2), radius: 2, x: 0, y: 1)
                        .overlay(
                            VStack{
                                VStack{
                                    Image("ordercancel")
                                        .scaledToFit()
                                }
                                .frame(width: 108, height: 110, alignment: .center)
                                .padding(.vertical)
                                
                                Text("Error?")
                                    .foregroundColor(Color("black"))
                                    .font(Font.custom("poppins", size: 20))
                                    .fontWeight(.bold)
                                
                                Text(errorMessage)
                                    .foregroundColor(Color("black").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .padding(.top,1)
                                
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 70)
                                            .foregroundColor(Color("White"))
                                        
                                        RoundedRectangle(cornerRadius: 70)
                                            .stroke(Color("buttonbg"),lineWidth: 1)
                                            .overlay(
                                                    Text("OK")
                                                        .foregroundColor(Color("black").opacity(0.4))
                                                        .font(Font.custom("poppins", size: 18))
                                                        .fontWeight(.regular)
                                            )
                                        
                                    }.frame(width: 120, height: 35, alignment: .center)
                                        .onTapGesture{
                                            togglepopup.toggle()
                                        }
                                    
                                   
                                }
                                .frame(width: UIScreen.main.bounds.width - 70)
                                .padding(.vertical)
                                    
                                
                            }
                        )

                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
