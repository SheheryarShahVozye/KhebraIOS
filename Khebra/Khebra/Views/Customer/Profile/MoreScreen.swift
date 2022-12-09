//
//  MoreScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct MoreScreen: View {
    var moreItems:[String] = ["Wallet","My Point","Orders","Price List","User Agreements",
                              "Register as a service provider","Profile","About Khebra","Share App and win with us",
    "Connect Us","Favorite Technicians","FAQ","Setting","Logout"]
    var itemImages: [String] = ["wallet","points","orders-grat","pricelist","userAgreement","registerService","User","about","share",
    "connect","heart","faq","settings","logout"]
    @EnvironmentObject var viewRouter: ViewRouter
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"More")
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
                                            let defaults = UserDefaults.standard
                                            defaults.set("", forKey: Keys.token)
                                           // defaults.set("", forKey: Keys.userID)
                                            UserDefaults.standard.removeObject(forKey: Keys.token)
                                            viewRouter.currentPage = "LoginScreen"
                                        }
                                        
                                        if  moreItems[item] == "Orders" {
                                            viewRouter.currentPage = "OrderScreen"
                                        }
                                        
                                        if  moreItems[item] == "Setting" {
                                            viewRouter.currentPage = "SettingScreen"
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
                BottomNavigation()
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct MoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoreScreen()
    }
}
