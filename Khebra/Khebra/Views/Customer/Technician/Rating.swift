//
//  Rating.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct RatingScreen: View {
    @State var comments: String = ""
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Rating")
                ScrollView{
                    VStack{
                        HStack{
                            Text("Work Perefection")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: true, description: "Perfect")
                            CancellationTypes(checkMark: true, description: "Clumsy")
                            
                            Spacer()
                        }
                      
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Arrival time")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: true, description: "Arrival time")
                            CancellationTypes(checkMark: true, description: "late arrival")
                            
                            Spacer()
                        }
                      
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Performance Speed")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: true, description: "Fast")
                            CancellationTypes(checkMark: true, description: "Slow")
                            
                            Spacer()
                        }
                      
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Good Behavior And Manners")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: true, description: "Manners")
                            CancellationTypes(checkMark: true, description: "Bad Manners")
                            
                            Spacer()
                        }
                      
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("The Appearance")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: true, description: "Well look")
                            CancellationTypes(checkMark: true, description: "Bad Looking")
                            
                            Spacer()
                        }
                      
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Comment")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
                            .foregroundColor(Color("White"))
                            .overlay(
                                TextEditor(text: $comments)
                                    .padding(.leading)
                                    
                            )
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    CustomButton(title: "Send", callback: {
                        
                    })
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct RatingScreen_Previews: PreviewProvider {
    static var previews: some View {
        RatingScreen()
    }
}
