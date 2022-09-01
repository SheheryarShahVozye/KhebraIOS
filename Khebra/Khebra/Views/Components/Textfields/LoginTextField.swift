//
//  LoginTextField.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct LoginTextField: View {
    @Binding var value:String
    var body: some View {
       RoundedRectangle(cornerRadius: 5)
            .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
            .foregroundColor(Color("White"))
            .overlay(
                HStack{
                    Image("علم-المملكة-العربية-السعودية-حاليا")
                        .scaledToFit()
                    Text("+965")
                        .font(.custom("STCRegular", size: 14))
                        .foregroundColor(Color("fontBlue"))
                    
                  RoundedRectangle(cornerRadius: 0)
                        .frame(width: 0.5, height: 31, alignment: .center)
                        .foregroundColor(Color("B2C1E3"))
                    
                    TextField("", text: $value)

                }.padding(.horizontal,10)
            )
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField(value: .constant(""))
    }
}

