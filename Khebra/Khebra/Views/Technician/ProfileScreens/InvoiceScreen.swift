//
//  InvoiceScreen.swift
//  Khebra
//
//  Created by Sheheryar on 06/09/2022.
//

import SwiftUI

struct InvoiceScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Invoices")
                ScrollView{
                    VStack{
                        OrderButton(title: "New Invoice", callback: {
                            
                        })
                        
                        HStack{
                            Text("My Invoices list")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontBlue"))
                            
                            Spacer()
                        }.padding(.horizontal)
                        VStack{
                            HStack{
                                Text("Invoice No.")
                                    .foregroundColor(Color("fontBlue"))
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .frame(width: 70)
                                
                                Text("Date & time")
                                    .foregroundColor(Color("fontBlue"))
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .frame(width: 70)
                                
                                Text("Customer")
                                    .foregroundColor(Color("fontBlue"))
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .frame(width: 70)
                                
                                Text("Amount")
                                    .foregroundColor(Color("fontBlue"))
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .frame(width: 70)
                                    
                                Spacer()
                            }.padding(.horizontal,15)
                                .padding(.vertical,19)
                            VStack{
                                HStack{
                                    Text("#292030")
                                        .foregroundColor(Color("464646"))
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .frame(width: 70)
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("20/06/2022 2:30 PM")
                                        .foregroundColor(Color("464646"))
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .frame(width: 70)
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    
                                    Text("Ali Ahmed")
                                        .foregroundColor(Color("464646"))
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .frame(width: 70)
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("500")
                                        .foregroundColor(Color("464646"))
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .frame(width: 70)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Spacer()
                                    
                                }.padding(.horizontal,15)
                                
                                
                            }
                           
                            
                        }.background(Color("White"))
                            .border(Color("5A5A5A").opacity(0.2))
                            .padding(.horizontal)
                            .padding(.vertical)
                    }
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct InvoiceScreen_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceScreen()
    }
}
