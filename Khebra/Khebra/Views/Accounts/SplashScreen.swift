//
//  SplashScreen.swift
//  Khebra
//
//  Created by Sheheryar on 23/08/2022.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Logo")
                    .scaledToFit()
                Spacer()
                Image("splashVector")
                    .scaledToFit()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("splashBg"))
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
