//
//  NewInvoiceScreen.swift
//  Khebra
//
//  Created by Sheheryar on 07/09/2022.
//

import SwiftUI

struct NewInvoiceScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "New Invoice")
                ScrollView{
                    VStack{
                        VStack{
                            HStack{
                                Image("User")
                                    .scaledToFit()
                                Text("Name")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "Name")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("service")
                                    .scaledToFit()
                                Text("Service")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "Service")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("mobileNo")
                                    .scaledToFit()
                                Text("Mobile No.")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "Mobile No")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("pricelist")
                                    .scaledToFit()
                                Text("Hand fare without VAT")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("invoiceLightBlue")
                                    .scaledToFit()
                                Text("Spare parts invoice")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("invoiceLightBlue")
                                    .scaledToFit()
                                Text("Spare parts invoice (Photo)")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 0.5)
                                .overlay(
                                    HStack{
                                        Image("thumbnail")
                                            .scaledToFit()
                                        Text("Upload photo ID")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("B2C1E3"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }.padding(.horizontal)
                                )
                        }.padding(.top,5)
                        
                        OrderButton(title: "Issuing an invoice", callback: {
                            
                        }).padding(.vertical)
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct NewInvoiceScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewInvoiceScreen()
    }
}
