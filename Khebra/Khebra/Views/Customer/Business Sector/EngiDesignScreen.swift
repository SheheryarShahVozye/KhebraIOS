//
//  EngiDesignScreen.swift
//  Khebra
//
//  Created by Sheheryar on 03/09/2022.
//

import SwiftUI

struct EngiDesignScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Engineering Designs")
                ScrollView{
                    VStack{
                        HStack
                        {
                            Text("Please write project details and attach files and photos,if any")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("464646"))
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .padding(.horizontal)
                        }
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("service")
                                        .scaledToFit()
                                    Text("Service")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("5F5E5E"))
                                        .fontWeight(.medium)
                                        
                                }
                               
                                
                                Spacer()
                            }.padding(.leading,25)
                            CustomTextField(value: .constant(""))
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("details")
                                        .scaledToFit()
                                    Text("Details")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("5F5E5E"))
                                        .fontWeight(.medium)
                                        
                                }
                               
                                
                                Spacer()
                            }.padding(.leading,25)
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    TextEditor(text: .constant(""))
                                        .padding(.leading)
                                        
                                )
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("thumbnail")
                                        .scaledToFit()
                                    Text("Attached Photos And Files")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("5F5E5E"))
                                        .fontWeight(.medium)
                                        
                                }
                               
                                
                                Spacer()
                            }.padding(.leading,25)
                            
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    HStack{
                                        Image("thumbnail")
                                            .scaledToFit()
                                        Text("Upload file")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("B2C1E3"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }.padding(.horizontal)
                                )
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                VStack{
                                    Image("Rectangle 99")
                                        .scaledToFit()
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: 73, height: 36, alignment: .center)
                                        .foregroundColor(Color("White"))
                                        .shadow(radius: 0.5)
                                        .overlay(
                                            Text("file 1")
                                                .font(.system(size: 12))
                                                .foregroundColor(Color("B2C1E3"))
                                                .fontWeight(.medium)
                                        )
                                    
                                }
                               
                                VStack{
                                    Image("Rectangle 99")
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: 73, height: 36, alignment: .center)
                                        .foregroundColor(Color("White"))
                                        .shadow(radius: 0.5)
                                        .overlay(
                                            Text("file 1")
                                                .font(.system(size: 12))
                                                .foregroundColor(Color("B2C1E3"))
                                                .fontWeight(.medium)
                                        )
                                }
                               
                                    .scaledToFit()
                                
                                Spacer()
                                
                            }.padding(.horizontal,25)
                        }.padding(.top,5)
                    }
                }
            }
        } .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct EngiDesignScreen_Previews: PreviewProvider {
    static var previews: some View {
        EngiDesignScreen()
    }
}
