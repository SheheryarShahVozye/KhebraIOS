//
//  AboutKhebra.swift
//  Khebra
//
//  Created by apple on 11/12/2022.
//

import SwiftUI

struct AboutKhebra: View {
    @State var TermsAndConditionList : AboutUsObject = AboutUsObject()
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "About Khebra")
                ScrollView{
                    VStack{
                        ForEach(0 ..< (TermsAndConditionList.aboutUs?.count ?? 0),id:\.self) { ind in
                            HStack{
                                Text(TermsAndConditionList.aboutUs?[ind].title ?? "")
                                    .foregroundColor(Color("black").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                                .padding(.vertical)
                          
                            VStack{
                                HStack{
                                    Text(TermsAndConditionList.aboutUs?[ind].text ?? "")
                                        .foregroundColor(Color("black").opacity(0.6))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                               
                            }.padding(.horizontal)
                                .padding(.vertical,10)
                            
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getAboutkhebra(success: { res in
                    TermsAndConditionList = res
                }, failure: { _ in
                    
                })
            }
    }
}

struct TermsAndConditionScreen: View {
    @State var TermsAndConditionList : TermsAndCondition = TermsAndCondition()
 
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Terms & Condition")
                ScrollView{
                    VStack{
                        ForEach(0 ..< (TermsAndConditionList.termsAndConditions?.count ?? 0),id:\.self) { ind in
                            HStack{
                                Text(TermsAndConditionList.termsAndConditions?[ind].title ?? "")
                                    .foregroundColor(Color("black").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                                .padding(.vertical)
                          
                            VStack{
                                HStack{
                                    Text(TermsAndConditionList.termsAndConditions?[ind].text ?? "")
                                        .foregroundColor(Color("black").opacity(0.6))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                               
                            }.padding(.horizontal)
                                .padding(.vertical,10)
                            
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getTermsAndCondition(success: { res in
                    TermsAndConditionList = res
                }, failure: { _ in
                    
                })
            }
    }
}

struct TechnicalTermsAndConditionScreen: View {
    @State var TermsAndConditionList : TechnicalTermsObject = TechnicalTermsObject()
 
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Technical Terms & Condition")
                ScrollView{
                    VStack{
                        ForEach(0 ..< (TermsAndConditionList.technicalTermsAndConditions?.count ?? 0),id:\.self) { ind in
                            HStack{
                                Text(TermsAndConditionList.technicalTermsAndConditions?[ind].title ?? "")
                                    .foregroundColor(Color("black").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                                .padding(.vertical)
                          
                            VStack{
                                HStack{
                                    Text(TermsAndConditionList.technicalTermsAndConditions?[ind].text ?? "")
                                        .foregroundColor(Color("black").opacity(0.6))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                               
                            }.padding(.horizontal)
                                .padding(.vertical,10)
                            
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getTechnicalTermsAndCondition(success: { res in
                    TermsAndConditionList = res
                }, failure: { _ in
                    
                })
            }
    }
}

struct PrivacyPolicyScreen: View {
    @State var TermsAndConditionList : PrivacyObject = PrivacyObject()
 
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Privacy Policy")
                ScrollView{
                    VStack{
                        ForEach(0 ..< (TermsAndConditionList.privacyPolicy?.count ?? 0),id:\.self) { ind in
                            HStack{
                                Text(TermsAndConditionList.privacyPolicy?[ind].title ?? "")
                                    .foregroundColor(Color("black").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                                .padding(.vertical)
                          
                            VStack{
                                HStack{
                                    Text(TermsAndConditionList.privacyPolicy?[ind].text ?? "")
                                        .foregroundColor(Color("black").opacity(0.6))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                               
                            }.padding(.horizontal)
                                .padding(.vertical,10)
                            
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.privacy(success: { res in
                    TermsAndConditionList = res
                }, failure: { _ in
                    
                })
            }
    }
}

struct AboutKhebra_Previews: PreviewProvider {
    static var previews: some View {
        AboutKhebra()
    }
}
