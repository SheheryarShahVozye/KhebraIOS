//
//  DashboardCard.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct DashboardCard: View {
    var imageName: String = "electricity"
    var serviceName: String = "electricity"
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("fontBlue"),lineWidth: 0.1)
                .overlay(
                    VStack{
                        
                        AsyncImage(url: URL(string: imageName)) { image in
                            image.resizable()
                             
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50, alignment: .center)
                       // .scaledToFit()
                        
                   //     .frame(width: 400, height: 400, alignment: .center)
                        
//                        Image(imageName)
//
//                            .scaledToFit()
                        
                        
                        Text(serviceName)
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color("fontBlue"))
                           // .padding(.top,5)

                        
                    }
                )
               
            
        } .frame(width: 98, height: 100, alignment: .center)
       
    }
}

struct DashboardCard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCard()
    }
}
