//
//  ConnectScreen.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct ConnectScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Share App and win with us")
                ScrollView{
                    
                }
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))

    }
}

struct ConnectScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnectScreen()
    }
}
