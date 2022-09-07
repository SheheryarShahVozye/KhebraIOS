//
//  IncomeScreen.swift
//  Khebra
//
//  Created by Sheheryar on 05/09/2022.
//

import SwiftUI

struct IncomeScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Income")
                ScrollView{
                    VStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 5)
                                 .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("fontBlue"),lineWidth: 0.5)
                                .overlay(
                                    HStack{
                                        Text("Your current income is:")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("black"))
                                       
                                        
                                        Spacer()
                                        Text("0.00 SAR")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("buttonbg"))
                                    }.padding(.horizontal)
                                )
                                
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                        HStack {
                            Text("You can now withdraw your income through STC Pay")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("black"))
                            .padding(.top)
                            
                            Spacer()
                        }
                        
                        HStack{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("fontBlue"),lineWidth: 0.5)
                                    .overlay(
                                        Image("stcpay")
                                            .scaledToFit()
                                    )
                            }.frame(width: 90, height: 45, alignment: .center)
                            
                            Spacer()
                        }
                        HStack{
                            Text("Please enter the mobile number")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("black"))
                                .padding(.top)
                            
                            Spacer()
                        }
                        
                        LoginTextField(value: .constant(""))
                        
                        HStack{
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: 27, height: 24, alignment: .center)
                                .foregroundColor(Color("FAFCFF"))
                                .shadow(radius: 1)
                                .padding(.leading)
                            Text("Recharge using another mobile number")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("5A5A5A"))
                            
                            Spacer()
                                
                        }.padding(.top)
                        VStack{
                            HStack{
                                Text("Please enter the amount (SAR)")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("black"))
                                
                                Spacer()
                            }
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                    .overlay(
                                        HStack{
                                           
                                            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: .constant("0.00"))
                                                .font(.system(size: 14))
                                                .foregroundColor(Color("buttonbg"))
                                        }.padding(.horizontal)
                                    )
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                            
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Text("Please choose:")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("black"))
                                
                                Spacer()
                            }
                            HStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .frame(width: 27, height: 24, alignment: .center)
                                    .foregroundColor(Color("FAFCFF"))
                                    .shadow(radius: 1)
                                    .padding(.leading)
                                Text("Transfer the amount to Stc Pay")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("5A5A5A"))
                                
                                Spacer()
                                    
                            }
                            HStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .frame(width: 27, height: 24, alignment: .center)
                                    .foregroundColor(Color("FAFCFF"))
                                    .shadow(radius: 1)
                                    .padding(.leading)
                                Text("Transfer the amount to your balance in the app")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("5A5A5A"))
                                
                                Spacer()
                                    
                            }
                        }.padding(.top)
                        
                        CustomButton(title: "Accept", callback: {
                            
                        }).padding(.top)
                       
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct IncomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        IncomeScreen()
    }
}
