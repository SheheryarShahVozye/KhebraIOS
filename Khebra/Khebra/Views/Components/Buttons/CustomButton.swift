//
//  CustomButton.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct CustomButton: View {
    var title: String = "Login"
    var callback: () -> Void = {}
    var body: some View {
       RoundedRectangle(cornerRadius: 2)
            .foregroundColor(Color("buttonbg"))
            .frame(width: 175, height: 50, alignment: .center)
            .overlay(
                HStack{
                    if let language = UserDefaults.standard.value(forKey: Keys.language) as? String {
                        if language == "ar" {
                            Text(title.localized("ar"))
                                .font(.system(size: 16))
                                .foregroundColor(Color("White"))
                                .fontWeight(.semibold)
                        } else {
                            Text(title)
                                .font(.system(size: 16))
                                .foregroundColor(Color("White"))
                                .fontWeight(.semibold)
                        }
                    } else {
                        Text(title)
                            .font(.system(size: 16))
                            .foregroundColor(Color("White"))
                            .fontWeight(.semibold)
                    }
                }
                      
            ).onTapGesture {
                callback()
            }
    }
}

struct CustomButtonSignup: View {
    var title: String = "Login"
    var callback: () -> Void = {}
    var body: some View {
       RoundedRectangle(cornerRadius: 2)
            .foregroundColor(Color("buttonbg"))
            .frame(width: 225, height: 50, alignment: .center)
            .overlay(
                        Text(title)
                            .font(.system(size: 16))
                            .foregroundColor(Color("White"))
                            .fontWeight(.semibold)
            ).onTapGesture {
                callback()
            }
    }
}

struct OrderButton: View {
    var title: String = "Login"
    var callback: () -> Void = {}
    var body: some View {
       RoundedRectangle(cornerRadius: 2)
            .foregroundColor(Color("buttonbg"))
            .frame(width: 225, height: 50, alignment: .center)
            .overlay(
                        Text(title)
                            .font(.system(size: 16))
                            .foregroundColor(Color("White"))
                            .fontWeight(.semibold)
            ).onTapGesture {
                callback()
            }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(callback: {})
        OrderButton(title: "Pay (720 SAR)", callback: {
            
        })
    }
}
