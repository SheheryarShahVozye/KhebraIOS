//
//  ConnectCard.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct ConnectCard: View {
    var borderColor: String = "137D3B"
    var name: String = "WhatsApp"
    var ImageName: String = "whatsapp"
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 5)
                 .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(borderColor),lineWidth: 0.5)
                 .overlay(
                 
                     HStack{
                         Image(ImageName)
                             .scaledToFit()
                        
                         
                         Text(name)
                             .font(.system(size: 16))
                             .fontWeight(.medium)
                             .foregroundColor(Color("fontBlue"))
                             .padding(.leading)
                         
                         Spacer()
                         
                     }.padding(.horizontal)
                 )
            
        }.frame(width: UIScreen.main.bounds.width - 50, height: 55, alignment: .center)
      
    }
}

struct ConnectCard_Previews: PreviewProvider {
    static var previews: some View {
        ConnectCard()
    }
}
