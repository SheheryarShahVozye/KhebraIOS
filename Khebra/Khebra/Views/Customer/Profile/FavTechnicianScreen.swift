//
//  FavTechnicianScreen.swift
//  Khebra
//
//  Created by Sheheryar on 02/09/2022.
//

import SwiftUI

struct FavTechnicianScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Favorite Technicians")
                ScrollView{
                    VStack{
                        ForEach(0 ..< 3,id:\.self) { _ in
                            FavTechnicianCard()
                        }
                       
                    }
                }
                BottomNavigation()
            }
           
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getAllfavTech(success: { _ in
                    
                }, failure: { _ in
                    
                })
            }
    }
}

struct FavTechnicianScreen_Previews: PreviewProvider {
    static var previews: some View {
        FavTechnicianScreen()
    }
}
