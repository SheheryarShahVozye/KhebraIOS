//
//  OfferScreen.swift
//  Khebra
//
//  Created by Sheheryar on 02/09/2022.
//

import SwiftUI

struct OfferScreen: View {
    @State var offers: [OffersClass] = []
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Offers")
                ScrollView{
                    VStack{
                        ForEach(0 ..< offers.count,id:\.self) { ind in
                            OffersCard(text: offers[ind].description ?? "")
                                .padding()
                        }
                    }
                    
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getoffers(success: { res in
                    offers = res
                }, failure: { _ in
                    
                })
            }
    }
}

struct OfferScreen_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreen()
    }
}
