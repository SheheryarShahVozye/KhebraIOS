//
//  ContentView.swift
//  Khebra
//
//  Created by Sheheryar on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
    
        if viewRouter.currentPage == "splashscreen" {
            SplashScreen()
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        if let token = UserDefaults.standard.value(forKey: Keys.token) as? String {
                            if token != "" {
                                AppUtil.idToken = token
                                viewRouter.currentPage = "DashboardScreen"
                            } else {
                                viewRouter.currentPage = "LoginScreen"
                            }
                        } else {
                            viewRouter.currentPage = "LoginScreen"
                        }
                       
                    }
                })
        } else {
            RouteManager()
        }
      
     //   OrderScreen()
        
     
    }
}

struct RouteManager: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        if viewRouter.currentPage == "LoginScreen" {
            LoginScreen()
        } else if viewRouter.currentPage == "SignUpScreen" {
            SignUpScreen()
        } else if viewRouter.currentPage == "VerificationScreen" {
            VerificationScreen()
        } else if viewRouter.currentPage == "AccountCompletion" {
            AccountCompletion()
        } else if viewRouter.currentPage == "DashboardScreen" {
            DashboardScreen()
        } else if viewRouter.currentPage == "CreateOrder" {
            CreateOrder()
        } else if viewRouter.currentPage == "CreateOrder" {
            CreateOrder()
        } else if  viewRouter.currentPage == "TrackingOrderScreen" {
            TrackingOrderScreen()
        } else if viewRouter.currentPage == "OrderDetailScreen" {
            OrderDetailScreen()
        } else if viewRouter.currentPage == "TechnicianDetail" {
            TechnicianDetail()
        } else if viewRouter.currentPage == "OrderScreen" {
            OrderScreen()
        } else if viewRouter.currentPage == "MoreScreen" {
            MoreScreen()
        } else if viewRouter.currentPage == "ShareApp" {
            ShareApp()
        } else if viewRouter.currentPage == "ConnectScreen" {
            ConnectScreen()
        } else if viewRouter.currentPage == "UserAgreementScreen" {
            UserAgreementScreen()
        } else if viewRouter.currentPage == "ProfileScreen" {
            ProfileScreen()
        } else if viewRouter.currentPage == "MyPointScreen" {
            MyPointScreen()
        } else if viewRouter.currentPage == "CompleteOrderScreen" {
            CompleteOrderScreen()
        } else if viewRouter.currentPage == "RatingScreen" {
            RatingScreen()
        } else if viewRouter.currentPage == "OfferScreen" {
            OfferScreen()
        } else if viewRouter.currentPage == "FavTechnicianScreen" {
            FavTechnicianScreen()
        } else if viewRouter.currentPage == "BusinessSectorScreen" {
            BusinessSectorScreen()
        } else if viewRouter.currentPage == "TechnicianDashboard" {
            TechnicianDashboard()
        } else if viewRouter.currentPage == "NotificationScreen" {
            NotificationScreen()
        } else if viewRouter.currentPage == "OrderDashboardScreen" {
            OrderDashboardScreen()
        } else if viewRouter.currentPage == "NewOrderDetailScreen" {
            NewOrderDetailScreen()
        } else if viewRouter.currentPage == "IncomingOrderScreen" {
            IncomingOrderScreen()
        } else if viewRouter.currentPage == "DeferredOrderScreen" {
            DeferredOrderScreen()
        } else if viewRouter.currentPage == "CompletedOrderScreen" {
            CompletedOrderScreen()
        } else if viewRouter.currentPage == "InvoiceDetailScreen" {
            InvoiceDetailScreen()
        } else if viewRouter.currentPage == "TechMoreScreen" {
            TechMoreScreen()
        } else if viewRouter.currentPage == "IncomeScreen" {
            IncomeScreen()
        } else if viewRouter.currentPage == "HowToUseScreen" {
            HowToUseScreen()
        } else if viewRouter.currentPage == "TechProfileScreen" {
            TechProfileScreen()
        } else if viewRouter.currentPage == "SettingScreen" {
            SettingScreen()
        } else if viewRouter.currentPage == "RegisterPasswordScreen" {
            RegisterPasswordScreen()
        } else if viewRouter.currentPage == "IncentivePenaltyScreen" {
            IncentivePenaltyScreen()
        } else if viewRouter.currentPage == "NewInvoiceScreen" {
            NewInvoiceScreen()
        } else if viewRouter.currentPage == "RatingFactorScreen" {
            RatingFactorScreen()
        } else if viewRouter.currentPage == "ChooseOnMapScreen" {
            ChooseOnMapScreen()
        } else if viewRouter.currentPage == "LocationScreen" {
            LocationScreen()
        } else if viewRouter.currentPage == "PaymentScreen" {
            PaymentScreen()
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Keys {
    static let selectedLongitude = "selectedLanguage"
    static let selectedLat = "selectedLat"
    static let token = "token"
    static let userID = "userID"
    
}

