//
//  OfferScreen.swift
//  Khebra
//
//  Created by Sheheryar on 02/09/2022.
//

import SwiftUI

struct OfferScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Offers")
                ScrollView{
                    VStack{
                        ForEach(0 ..< 7,id:\.self) { _ in
                            OffersCard()
                                .padding()
                        }
                    }
                    
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct OfferScreen_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreen()
    }
}
