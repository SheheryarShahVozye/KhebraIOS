//
//  InvoiceDetailScreen.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct InvoiceDetailScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Invoice Detail")
                
                ScrollView{
                    VStack{
                        OrderNumCard()
                        HStack{
                            VStack{
                                HStack{
                                    VStack {
                                        Image("darkBluemarker")
                                            .scaledToFit()
                                        Spacer()
                                    }.padding(.bottom,5)
                                    VStack{
                                        HStack {
                                            Text("Order Location")
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                            .foregroundColor(Color("fontBlue"))
                                            Spacer()
                                        }
                                       
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                  .frame(height: 1)
                                                  .foregroundColor(Color("B2C1E3"))
                                        
                                    }
                                    Spacer()
                                }
                            }.padding(.horizontal)
                                .padding(.top,20)
                        }
                        VStack{
                            Image("MapSmall")
                                .resizable()
                               
                            
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 180, alignment: .center)
                            .padding(.vertical,10)
                       
                        VStack{
                            HStack{
                                VStack {
                                    Image("user_big_outlined")
                                        .resizable()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack{
                                        Text("Customer")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Mohammed Abed ElAzizi")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("5A5A5A"))
                                        Spacer()
                                    }.padding(.top,1)
                                }.padding(.horizontal,5)
                            }.padding(.horizontal,20)
                            HStack{
                                VStack {
                                    Image("time")
                                        .resizable()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack{
                                        Text("Date & time")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("6/6/2022, 05:30 PM")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("5A5A5A"))
                                        Spacer()
                                    }.padding(.top,1)
                                }.padding(.horizontal,5)
                            }.padding(.horizontal,20)
                           
                            HStack{
                                VStack {
                                    Image("time")
                                        .resizable()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack{
                                        Text("Address")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("As Sahafah, Olaya St. 6531, 3059 Riyadh 13321, Saudi Arabia")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("5A5A5A"))
                                        Spacer()
                                    }.padding(.top,1)
                                }.padding(.horizontal,5)
                            }.padding(.horizontal,20)
                            
                        }
                        .padding(.top)
                        
                        
                        VStack{
                            HStack{
                                Text("Please enter the work fee without VAT")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.leading,25)
                            InvoiceTextField(value: .constant(""))
                        }.padding(.vertical,10)
                        
                        VStack{
                            HStack{
                                Text("Please enter the cost of spare parts (if any)")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.leading,25)
                            InvoiceTextField(value: .constant(""))
                        }.padding(.vertical,10)
                        
                        VStack{
                            HStack{
                                Text("Please upload the spare parts invoice")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.leading,25)
                            ZStack{
                              
                                RoundedRectangle(cornerRadius: 0)
                                     .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color("B2C1E3"),lineWidth: 1)
                                    .overlay(
                                        HStack{
                                            Image("thumbnail")
                                                .scaledToFit()
                                            
                                            Text("Upload File")
                                                .font(.system(size: 14))
                                                .foregroundColor(Color("B2C1E3"))
                                                .fontWeight(.regular)
                                        }.padding(.leading)
                                    )
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                        }.padding(.vertical,10)
                        
                        VStack
                        {
                            CustomButton(title: "Send to Customer", callback: {
                                
                            })
                        }.padding(.vertical,20)
                    }
                }
                
                BottomNavTechnician()
            }
          
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct InvoiceDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceDetailScreen()
    }
}
