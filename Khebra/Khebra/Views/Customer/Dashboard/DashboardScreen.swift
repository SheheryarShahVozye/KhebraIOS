//
//  DashboardScreen.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct DashboardScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    HStack{
                       Image("profileImage")
                            .resizable()
                            .frame(width: 36, height: 36, alignment: .center)
                            .clipShape(Circle())
                        VStack{
                            HStack{
                                Text("Hello")
                                    .fontWeight(.regular)
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("B6BAC3"))
                                Spacer()
                            }
                            HStack{
                                
                                Text("Mohammed Abed ElAzizi")
                                    .fontWeight(.bold)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("fontBlue"))
                                Spacer()
                            }
                            
                        }
                        Spacer()
                            
                    }
                }.padding(.horizontal,30)
                    .padding(.vertical,50)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        
                        Image("coverpic")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 50, height: 136, alignment: .center)
                            .scaledToFit()
                            .cornerRadius(2)
                            .padding(.vertical)
                        
                        RoundedRectangle(cornerRadius: 2)
                            .frame(width: 250, height: 50, alignment: .center)
                            .foregroundColor(Color("fontBlue"))
                            .overlay(
                              
                                Text("Business Sector")
                                .foregroundColor(Color("White"))
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                           
                            ).padding(.top)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 2)
                                .foregroundColor(Color("White"))
                         
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(Color("137D3B"),lineWidth: 0.5)
                                .overlay(
                                    HStack{
                                        Text("You can request the service via WhatsApp")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("137D3B"))
                                            .padding(.leading)
                                            .multilineTextAlignment(.leading)
                                           
                                        
                                        Spacer()
                                        Image("whatsapp")
                                            .scaledToFit()
                                            .padding(.trailing)
                                        
                                    }.padding(.horizontal,5)
                                )
                        
                        }.frame(width: UIScreen.main.bounds.width - 70, height: 64, alignment: .center)
                            .padding(.top)
                        
                        VStack{
                            LazyVGrid(columns: columns, spacing: 15) {
                                ForEach(0 ..< AppUtil.serviceTypes.count,id:\.self) { val in
                                    DashboardCard(imageName: AppUtil.serviceImages[val],serviceName: AppUtil.serviceTypes[val])
                                }
                            }.frame(width: UIScreen.main.bounds.width - 50)
                        }.padding(.top,20)
                       
                        
                    }
                    
                }
              BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
