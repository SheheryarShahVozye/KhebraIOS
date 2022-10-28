//
//  OrderScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct OrderScreen: View {
    @State var selected: String = "Current"
    @State var textcolorNon: String = "B2C1E3"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "My Order")
                VStack{
                    RoundedRectangle(cornerRadius: 7)
                        .foregroundColor(Color("White"))
                        .frame(width: UIScreen.main.bounds.width - 50, height: 60, alignment: .center)
                        .shadow(radius: 1)
                        .overlay(
                            HStack{
                                Group{
                                    if selected == "Current" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                            .overlay(
                                                Text("Current")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                
                                            )
                                    } else {
                                        Text("Current")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Current"
                                            }
                                    }
                                }.frame(width: 100, height: 50, alignment: .center)
                                
                                
                                
                                Spacer()
                                Group {
                                    if selected == "Completed" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                        
                                            .overlay(
                                                Text("Completed")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                
                                                
                                            )
                                    } else {
                                        Text("Completed")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Completed"
                                            }
                                    }
                                }.frame(width: 100, height: 50, alignment: .center)
                                
                                
                                Spacer()
                                Group {
                                    if selected == "Cancelled" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                            .overlay(
                                                Text("Cancelled")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                
                                            )
                                    } else {
                                        Text("Cancelled")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Cancelled"
                                            }
                                        
                                    }
                                }.frame(width: 100, height: 50, alignment: .center)
                                
                                
                                
                            }.padding(.horizontal)
                        ).padding(.vertical,10)
                    ScrollView{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            if selected == "Current" {
                                MyOrderCard()
                                    .onTapGesture{
                                        viewRouter.currentPage = "TrackingOrderScreen"
                                    }
                            } else if selected == "Completed" {
                                MyOrderCompletedCard()
                                    .onTapGesture{
                                        viewRouter.currentPage = "TrackingOrderScreen"
                                    }
                            } else {
                                MyOrderCompletedCancelled()
                                    .onTapGesture{
                                        viewRouter.currentPage = "TrackingOrderScreen"
                                    }
                            }
                           
                        }
                    }.padding(.top)
                    BottomNavigation()
                }
               
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getCurrentOrders(success: { _ in
                    
                }, failure: { _ in
                    
                })
            }
    }
}

struct OrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderScreen()
    }
}
