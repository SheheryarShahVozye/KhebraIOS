//
//  CompleteOrderScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct CompleteOrderScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation()
                ScrollView{
                    VStack{
                        Image("vector-2")
                            .scaledToFit()
                        
                        HStack{
                            Text("Payment has been completed successfully")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontBlue"))
                                .padding(.horizontal)
                                .multilineTextAlignment(.center)
                        }.padding(.vertical)
                        
                        HStack{
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("White"))
                                    
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color("buttonbg"),lineWidth: 1)
                                    .overlay(
                                        Text("Home")
                                            .foregroundColor(Color("buttonbg"))
                                            .font(.system(size: 16))
                                            .fontWeight(.medium)
                                    ).onTapGesture{
                                        viewRouter.currentPage = "DashboardScreen"
                                    }
                                
                            }.frame(width: 150, height: 50, alignment: .center)
                            
                            ZStack{
                                
    //                            RoundedRectangle(cornerRadius: 0)
    //                                .foregroundColor(Color("White"))
                                    
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("buttonbg"))
                                  //  .stroke(Color("buttonbg"),lineWidth: 1)
                                    .overlay(
                                        Text("Rating")
                                            .foregroundColor(Color("White"))
                                            .font(.system(size: 16))
                                            .fontWeight(.medium)
                                    ).onTapGesture{
                                        viewRouter.currentPage = "RatingScreen"
                                    }
                                
                            }.frame(width: 150, height: 50, alignment: .center)
                            
                        }
                       
                        
                    }
                }
                
               
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct CompleteOrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrderScreen()
    }
}
