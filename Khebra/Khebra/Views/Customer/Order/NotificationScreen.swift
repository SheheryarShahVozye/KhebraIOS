//
//  NotificationScreen.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct NotificationScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var notifications: [NotificationObjectElement] = []
    @EnvironmentObject var serviceManager: ServiceManager
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Notifications")
                ScrollView{
                    ForEach(0 ..< notifications.count,id:\.self) { ind in
                        NotificationCard(text: notifications[ind].descripton ?? "",timeStamp: AppUtil.getDateAndtime( dateValue: notifications[ind].createdAt ?? ""))
                            .onTapGesture {
                                //serviceManager.notificationOrder = notifications[ind].orderId
                                //viewRouter.currentPage = "OrderConfirmationScreen"
                            }
                    }
                    
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getNotifications(orderId: "", success: { res in
                    notifications = res
                }, failure: { _ in
                    
                })
            }
    }
}
struct NotificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationScreen()
    }
}
