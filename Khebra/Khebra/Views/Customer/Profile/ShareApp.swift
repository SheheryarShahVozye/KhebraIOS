//
//  ShareApp.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct ShareApp: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Share App and win with us")
                ScrollView{
                    VStack{
                        Image("shareApp")
                            .scaledToFit()
                            .padding(.vertical)
                        HStack{
                            Text("Get 10 SAR free credit")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontBlue"))
                        }.padding(.vertical,10)
                        
                        Text("Give your friend a discount of 20 SAR when ordering a service and get 10 SAR in your wallet upon completing the first order")
                            .font(.system(size: 16))
                            .foregroundColor(Color("5A5A5A"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,20)
                            .padding(.vertical,20)
                        
                        VStack{
                            HStack{
                                Text("Your share code")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("5A5A5A"))
                                Spacer()
                                
                            }
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                TextField("", text:.constant(""))
                                                Spacer()
                                            }.padding(.leading)
                                        )
                               
                                }.frame(width: UIScreen.main.bounds.width - 150, height: 45, alignment: .center)
                                
                               
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                        
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("buttonbg"),lineWidth: 1)
                                        .overlay(
                                            Text("Copy")
                                                .foregroundColor(Color("buttonbg"))
                                                .font(.system(size: 16))
                                                .fontWeight(.medium)
                                        )
                                    
                                }.frame(width: 73, height: 45, alignment: .center)
                                
                                Spacer()
                                
                            }
                        }.padding(.horizontal,30)
                            .padding(.vertical)
                        
                        VStack{
                            CustomButton(title: "send sharing", callback: {
                                
                            })
                        }.padding(.vertical)
                    }
                    
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct ShareApp_Previews: PreviewProvider {
    static var previews: some View {
        ShareApp()
    }
}
