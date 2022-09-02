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
                        viewRouter.currentPage = "LoginScreen"
                    }
                })
        } else {
            RouteManager()
        }
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
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

