//
//  BottomNavTechnician.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct BottomNavTechnician: View {
    var textColor: String = "B2C1E3"
    var buttonbg: String = "buttonbg"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        HStack{
            
            Spacer()
            VStack{
                Spacer()
                if viewRouter.currentPage == "TechnicianDashboard" {
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
                viewRouter.currentPage = "TechnicianDashboard"
                
            }
           
            
            Spacer()
            
            VStack{
                Spacer()
                if viewRouter.currentPage == "OrderDashboardScreen" {
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
                viewRouter.currentPage = "OrderDashboardScreen"
            }
            
           
            Spacer()
           
            VStack{
                Spacer()
                if viewRouter.currentPage == "NotificationScreen" {
                    Image("bellIcon")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)
                        
                    Text("Notifications")
                        .font(.system(size: 12))
                        .foregroundColor(Color(buttonbg))
                        .fontWeight(.medium)
                }
                else {
                    Image("bellIcon")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)

                    Text("Notifications")
                        .font(.system(size: 12))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.medium)
                }
               
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "NotificationScreen"
            }
            
            Group {
                Spacer()
               
             
                VStack{
                    Spacer()
                    if viewRouter.currentPage == "TechMoreScreen" {
                        
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
                    viewRouter.currentPage = "TechMoreScreen"
                }.padding(.top,10)
                
                Spacer()
            }

           
          
            
           
       
        }.frame(width: UIScreen.main.bounds.width,height: 80)
            .background(Color("White"))
    }
}

struct BottomNavTechnician_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavTechnician()
    }
}
