//
//  BottomNavigation.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct BottomNavigation: View {
    
    var textColor: String = "B2C1E3"
    var buttonbg: String = "buttonbg"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        HStack{
            
            Spacer()
            VStack{
                Spacer()
                if viewRouter.currentPage == "DashboardScreen" {
                    Image("Iconly-Bold-Home")
                        .scaledToFit()
                        .padding(.horizontal,10)
                        .padding(.bottom,5)
                        
                    Text("Home")
                        .font(.system(size: 12))
                        .foregroundColor(Color(buttonbg))
                        .fontWeight(.medium)
                }
                else {
                    Image("Iconly-Bold-Home-gray")
                        .scaledToFit()
                        .padding(.horizontal,10)
                        .padding(.bottom,5)

                    Text("Home")
                        .font(.system(size: 12))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.medium)
                }
               
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "DashboardScreen"
                
            }
           
            
            Spacer()
            
            VStack{
                Spacer()
                if viewRouter.currentPage == "OrderScreen" {
                    Image("orders-yellow")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)
                        
                    Text("Orders")
                        .font(.system(size: 12))
                        .foregroundColor(Color(buttonbg))
                        .fontWeight(.medium)
                }
                else {
                    Image("orders-grat")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)

                    Text("Orders")
                        .font(.system(size: 12))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.medium)
                }
               
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "OrderScreen"
            }
            
           
            Spacer()
           
            VStack{
                Spacer()
                if viewRouter.currentPage == "OfferScreen" {
                    Image("offers-gray")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)
                        
                    Text("Offers")
                        .font(.system(size: 12))
                        .foregroundColor(Color(buttonbg))
                        .fontWeight(.medium)
                }
                else {
                    Image("offers-gray")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)

                    Text("Offers")
                        .font(.system(size: 12))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.medium)
                }
               
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "OfferScreen"
            }
            
            Group {
                Spacer()
                VStack{
                    Spacer()
                    if viewRouter.currentPage == "BusinessSectorScreen" {
                        Image("business-yellow")
                            .padding(.horizontal,10)
                            .padding(.bottom,5)
                            
                        Text("Business Sector")
                            .font(.system(size: 12))
                            .foregroundColor(Color(buttonbg))
                            .fontWeight(.medium)
                    }
                    else {
                        Image("business-sector")
                            .padding(.horizontal,10)
                            .padding(.bottom,5)

                        Text("Business Sector")
                            .font(.system(size: 12))
                            .foregroundColor(Color(textColor))
                            .fontWeight(.medium)
                    }
                   
                    Spacer()
                }.onTapGesture {
                    viewRouter.currentPage = "BusinessSectorScreen"
                }
                Spacer()
             
                VStack{
                    Spacer()
                    if viewRouter.currentPage == "MoreScreen" {
                        
                        Image("more-yellow")
                            .scaledToFit()
                            .padding(.horizontal,10)
                            .padding(.bottom,5)
                            
                        Text("More")
                            .font(.system(size: 12))
                            .foregroundColor(Color(buttonbg))
                            .fontWeight(.medium)
                    }
                    else {
                        Image("more")
                            .scaledToFit()
                            .padding(.horizontal,10)
                            .padding(.bottom,5)

                        Text("More")
                            .font(.system(size: 12))
                            .foregroundColor(Color(textColor))
                            .fontWeight(.medium)
                    }
                   
                    Spacer()
                }.onTapGesture {
                    viewRouter.currentPage = "MoreScreen"
                }.padding(.top,10)
                
                Spacer()
            }

           
          
            
           
       
        }.frame(width: UIScreen.main.bounds.width,height: 80)
            .background(Color("White"))
    }
}

struct BottomNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigation()
    }
}
