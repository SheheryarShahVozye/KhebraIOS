//
//  HowToUseScreen.swift
//  Khebra
//
//  Created by Sheheryar on 05/09/2022.
//

import SwiftUI

struct HowToUseScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            
            VStack{
                TopNavigation(titleText: "How to use")
                ScrollView{
                    VStack{
                        HStack {
                            Text("Clips explaining how to use the app")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("black"))
                            .padding(.top)
                            
                            Spacer()
                        }
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 5)
                                 .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                .overlay(
                                    HStack{
                                        
                                        Image("Group 1159")
                                            .scaledToFit()
                                        
                                        
                                        Text("How to receive and process the order")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }.padding(.horizontal)
                                )
                                
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 90, alignment: .center)
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 5)
                                 .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                .overlay(
                                    HStack{
                                        
                                        Image("Group 1162")
                                            .scaledToFit()
                                        
                                        
                                        Text("Change password")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }.padding(.horizontal)
                                )
                                
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 90, alignment: .center)
                        VStack{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                    .overlay(
                                        HStack{
                                          
                                            
                                            
                                            Text("How do I receive orders?")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color("fontBlue"))
                                                .fontWeight(.medium)
                                            Spacer()
                                        }.padding(.horizontal)
                                    )
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                    .overlay(
                                        HStack{
                                          
                                            
                                            
                                            Text("How to issue invoices and send them to the customer?")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color("fontBlue"))
                                                .fontWeight(.medium)
                                            Spacer()
                                        }.padding(.horizontal)
                                    )
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                    .overlay(
                                        HStack{
                                          
                                            
                                            
                                            Text("App updates")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color("fontBlue"))
                                                .fontWeight(.medium)
                                            Spacer()
                                        }.padding(.horizontal)
                                    )
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("5A5A5A"),lineWidth: 0.5)
                                    .overlay(
                                        HStack{
                                          
                                            
                                            
                                            Text("Communicate with customer services")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color("fontBlue"))
                                                .fontWeight(.medium)
                                            Spacer()
                                        }.padding(.horizontal)
                                    )
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                        }
                        .padding(.top,20)
                      
                    }
                    .padding(.horizontal,30)
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct HowToUseScreen_Previews: PreviewProvider {
    static var previews: some View {
        HowToUseScreen()
    }
}
