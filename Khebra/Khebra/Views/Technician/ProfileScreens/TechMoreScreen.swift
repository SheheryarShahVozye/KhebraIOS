//
//  TechMoreScreen.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct TechMoreScreen: View {
    var moreItems:[String] = ["Profile","Notification","Income","Recharge","Statistics",
                              "Work Controls","Rating","Rating factors","Prices",
    "Connect Us","How to use","Setting","Share","Invoices","Logout"]
    var itemImages: [String] = ["User","bellIcon","incom","recharge","statistics","workControls","rating","ratingFactors","pricelist",
                               "connect","howtoUser","settings", "share","invoiceLightBlue","logout"]
    @EnvironmentObject var viewRouter: ViewRouter
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
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
                    
                }.padding(.top,50)
                    .padding(.horizontal)
                    .padding(.bottom,20)
               
                ScrollView{
                   
                    LazyVGrid(columns: columns, spacing: 10) {
                      
                        ForEach(0 ..< moreItems.count,id:\.self) { item in
                            if moreItems[item] == "Wallet" {
                                MoreCardWallet(value: "0.00")
                            } else if  moreItems[item] == "My Point" {
                                MoreCardWallet(name: "My Point", Imagename: "points", value: "0.00")
                                    .onTapGesture {
                                        viewRouter.currentPage = "MyPointScreen"
                                    }
                            } else {
                                MoreCard(name: moreItems[item],Imagename: itemImages[item])
                                    .onTapGesture {
                                        if moreItems[item] == "User Agreements" {
                                            viewRouter.currentPage = "UserAgreementScreen"
                                        }
                                        
                                        if moreItems[item] == "Profile" {
                                            viewRouter.currentPage = "ProfileScreen"
                                        }
                                        
                                        if moreItems[item] == "Share App and win with us" {
                                            viewRouter.currentPage = "ShareApp"
                                        }
                                        if moreItems[item] == "Connect Us" {
                                            viewRouter.currentPage = "ConnectScreen"
                                        }
                                        
                                        if  moreItems[item] == "Logout" {
                                            viewRouter.currentPage = "LoginScreen"
                                        }
                                        
                                        if  moreItems[item] == "Orders" {
                                            viewRouter.currentPage = "OrderScreen"
                                        }
                                        
                                        if moreItems[item] == "Favorite Technicians" {
                                            viewRouter.currentPage = "FavTechnicianScreen"
                                        }
                                    }
                            }
                           
                        }
                    }
                    VStack{
                        HStack{
                            Text("Social media")
                                .font(.system(size: 18))
                                .foregroundColor(Color("fontBlue"))
                            Spacer()
                        }.padding(.horizontal,20)
                        HStack{
                            SocialCard(imageName: "twitter")
                            SocialCard(imageName: "facebook")
                            SocialCard(imageName: "instagram")
                            SocialCard(imageName: "youtube_outlined")
                            
                            Spacer()
                        }.padding(.horizontal,20)
                    }.padding(.top)
                   
                }
                BottomNavTechnician()
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct TechMoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        TechMoreScreen()
    }
}
