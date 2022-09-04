//
//  CustomTextField.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var value:String
    var placeHolder: String = "Enter your name"
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
             .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
             .foregroundColor(Color("White"))
        
             .overlay(
                HStack{
                    TextField(placeHolder, text: $value)
                }.padding(.leading)
             )
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(value: .constant(""))
    }
}
