//
//  OrderDashboardScreen.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct OrderDashboardScreen: View {
    @State var selected: String = "New Order"
    @State var textcolorNon: String = "B2C1E3"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                HStack{
                   
                    ToggleView(isOn: .constant(false)) {
                        Color("137D3B") //you can put anything Image, Color, View.... & you can use different images depending on the toggle state using an if statement
                    }.frame(width: 40, height: 30)
                    Text("Available")
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(Color("137D3B"))
                        .padding(.leading)
                    
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 1)
                            .foregroundColor(Color("White"))
                        RoundedRectangle(cornerRadius: 1)
                            .stroke(Color("B2C1E3"),lineWidth: 1)
                            .overlay(
                                HStack{
                                 Text("Balance")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color("B2C1E3"))
                                        .fontWeight(.medium)
                                    
                                    Text("0.00")
                                           .font(.system(size: 15))
                                           .foregroundColor(Color("buttonbg"))
                                           .fontWeight(.bold)
                                }
                            )
                    }.frame(width: 115, height: 45, alignment: .center)
                        .padding(.leading,10)
                    
                    Spacer()
                    Image("darkBell")
                        .scaledToFit()
                        .padding(.trailing)
                    
                }.padding(.top,70)
                    .padding(.horizontal)
                VStack{
                    RoundedRectangle(cornerRadius: 7)
                        .foregroundColor(Color("White"))
                        .frame(width: UIScreen.main.bounds.width - 50, height: 60, alignment: .center)
                        .shadow(radius: 1)
                        .overlay(
                            HStack{
                                Group{
                                    if selected == "New Order" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                            .overlay(
                                                Text("New Order")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                
                                            )
                                    } else {
                                        Text("New Order")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "New Order"
                                            }
                                    }
                                }.frame(width: 100, height: 50, alignment: .center)
                                
                                
                                
                                Spacer()
                                Group {
                                    if selected == "Deferred" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                        
                                            .overlay(
                                                Text("Deferred")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                
                                                
                                            )
                                    } else {
                                        Text("Deferred")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Deferred"
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
                                
                                
                                
                            }.padding(.horizontal)
                        ).padding(.vertical,10)
                    ScrollView{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            if selected == "New Order" {
                                TechOrderDetailCard()
                                    .onTapGesture{
                                       viewRouter.currentPage = "NewOrderDetailScreen"
                                    }
                            } else if selected == "Deferred" {
                                TechOrderDetailCard()
                                    .onTapGesture{
                                        viewRouter.currentPage = "DeferredOrderScreen"
                                    }
                            } else {
                                TechOrderCompletedCard()
                                    .onTapGesture{
                                     viewRouter.currentPage = "CompletedOrderScreen"
                                    }
                            }
                           
                        }
                    }.padding(.top)
                    BottomNavTechnician()
                }
               
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct OrderDashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderDashboardScreen()
    }
}
