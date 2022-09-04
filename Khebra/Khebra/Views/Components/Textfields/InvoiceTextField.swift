//
//  InvoiceTextField.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct InvoiceTextField: View {
    @Binding var value:String
    var placeHolder: String = "Enter your name"
    var body: some View {
        ZStack{
          
            RoundedRectangle(cornerRadius: 0)
                 .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color("B2C1E3"),lineWidth: 1)
                .overlay(
                    HStack{
                        TextField(placeHolder, text: $value)
                    }.padding(.leading)
                )
        }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
    }
}

struct InvoiceTextField_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceTextField(value: .constant(""))
    }
}
