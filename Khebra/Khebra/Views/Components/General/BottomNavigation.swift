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
                if viewRouter.currentPage == "Dashboard" {
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
                viewRouter.currentPage = "Dashboard"
                
            }
           
            
            Spacer()
            
            VStack{
                Spacer()
                if viewRouter.currentPage == "Orders" {
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
                viewRouter.currentPage = "Orders"
            }
            
           
            Spacer()
           
            VStack{
                Spacer()
                if viewRouter.currentPage == "Offers" {
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
                viewRouter.currentPage = "Offers"
            }
            
            Group {
                Spacer()
                VStack{
                    Spacer()
                    if viewRouter.currentPage == "BusinessSector" {
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
                    viewRouter.currentPage = "BusinessSector"
                }
                Spacer()
             
                VStack{
                    Spacer()
                    if viewRouter.currentPage == "More" {
                        
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
                    viewRouter.currentPage = "More"
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
