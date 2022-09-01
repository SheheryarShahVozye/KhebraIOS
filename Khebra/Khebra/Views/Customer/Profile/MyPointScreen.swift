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
                        
                        VStack{
                            
                            HStack{
                                PointCard(title: "Redeem 1000 points", subTitle: "For 10 SAR")
                                PointCard(title: "Redeem 2000 points", subTitle: "For 15 SAR")
                            }
                            HStack{
                                PointCard(title: "Redeem 3000 points", subTitle: "For 20 SAR")
                                PointCard(title: "Redeem 4000 points", subTitle: "For 25 SAR")
                            }
                            HStack{
                                PointCard(title: "Redeem 5000 points", subTitle: "For 30 SAR")
                                PointCard(title: "Redeem 6000 points", subTitle: "For 40 SAR")
                            }
                        }

                    }
                    
                    
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct MyPointScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyPointScreen()
    }
}
