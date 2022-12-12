//
//  UserAgreementScreen.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct UserAgreementScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"User Agreement")
                ScrollView{
                    AgreementCard(name: "Privacy Policy", ImageName: "privacyPolicy")
                        .padding(.top,5)
                        .onTapGesture {
                            viewRouter.currentPage = "PrivacyPolicyScreen"
                        }
                    AgreementCard(name: "Terms & Conditions", ImageName: "termCondition")
                        .padding(.top,5)
                        .onTapGesture {
                            viewRouter.currentPage = "TermsAndConditionScreen"
                        }
                    AgreementCard(name: "Technical Terms & Conditions", ImageName: "termCondition")
                        .padding(.top,5)
                        .onTapGesture {
                            viewRouter.currentPage = "TechnicalTermsAndConditionScreen"
                        }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct UserAgreementScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserAgreementScreen()
    }
}
