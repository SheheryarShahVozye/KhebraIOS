//
//  MyPointScreen.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct MyPointScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"My Point")
                ScrollView{
                    VStack{
                        RoundedRectangle(cornerRadius: 5)
                            .fill(LinearGradient(
                              gradient: .init(colors: [Color("fontBlue"), Color("White")]),
                              startPoint: .init(x: 0, y: 0),
                              endPoint: .init(x: 10, y: 0)
                            ))
                            .frame(width: UIScreen.main.bounds.width - 40, height: 200, alignment: .center)
                            .overlay(
                                VStack{
                                    HStack{
                                        Text("Rewards Card")
                                            .font(.system(size: 18))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("White"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("For every riyal you pay through the app, you earn 15 points")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("White").opacity(0.6))
                                        Spacer()
                                    }.padding(.top,5)
                                    HStack{
                                        Text("Total Point")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("White"))
                                        
                                        Image("Rectangle 207")
                                            .scaledToFit()
                                        
                                        Text("Point")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("White").opacity(0.6))

                                        Spacer()
                                    }.padding(.top,5)
                                    
                                    HStack{
                                        VStack{
                                            HStack{
                                                Text("Name")
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("White").opacity(0.6))
                                                
                                                Spacer()
                                            }
                                            HStack{
                                                Text("Mohammed Abed ElAzizi")
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("White"))
                                                
                                                Spacer()
                                            }
                                        }
                                        Spacer()
                                        VStack{
                                            HStack{
                                                Text("Points Expiry Date")
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("White").opacity(0.6))
                                                
                                                Spacer()
                                            }
                                            HStack{
                                                Text("8/8/2022")
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("White"))
                                                
                                                Spacer()
                                            }
                                        }
                                    }.padding(.top,5)
                                }.padding(.horizontal)
                            )
                        
                        HStack{
                            
                            Text("Redeem points for a wallet balance")
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .foregroundColor(Color("fontBlue"))
                            
                            Spacer()
                            
                        }.padding(.horizontal)
                            .padding(.top)
                        
                        VStack{
                            
                            HStack{
                                PointCard(title: "Redeem 1000 points", subTitle: "For 10 SAR")
                                Spacer()
                                PointCard(title: "Redeem 2000 points", subTitle: "For 15 SAR")
                            }
                            HStack{
                                PointCard(title: "Redeem 3000 points", subTitle: "For 20 SAR")
                                Spacer()
                                PointCard(title: "Redeem 4000 points", subTitle: "For 25 SAR")
                            }
                            HStack{
                                PointCard(title: "Redeem 5000 points", subTitle: "For 30 SAR")
                                Spacer()
                                PointCard(title: "Redeem 6000 points", subTitle: "For 40 SAR")
                            }
                        }.padding(.vertical)
                            .padding(.horizontal,30)

                    }
                    
                    
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .onAppear(perform: {
                customerApi.getPointValue(success: { _ in
                    
                }, failure: { _ in
                    
                })
            })
        
    }
}

struct MyPointScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyPointScreen()
    }
}
