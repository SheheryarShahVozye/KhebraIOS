//
//  PaymentScreen.swift
//  Khebra
//
//  Created by apple on 23/11/2022.
//

import SwiftUI
import MoyasarSdk

struct PaymentScreen: View {
    @EnvironmentObject var serviceManager: ServiceManager
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "PaymentScreen")
                let paymentRequest = PaymentRequest(
                    amount: (serviceManager.selectedOrder?.invoice?.totalPrice ?? 0) * 100,
                    currency: "SAR",
                    description:"Payment For Order" + (serviceManager.selectedOrder?._id ?? ""), // + (serviceManager.bookingId ?? ""),
                    metadata: ["OrderId": serviceManager.selectedOrder?._id ?? ""]
                )
                CreditCardView(request: paymentRequest, callback: handlePaymentResult)
                    .onAppear(perform: {
                        
                    })
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
        
    }
    
    func handlePaymentResult(result: PaymentResult) {
        switch (result) {
           case .completed(let payment):
               handlePaymentResult(payment)
               break
           case .failed(let error):
               handlePaymentError(error)
               break
           case .canceled:
               // Handle Cancel Result
               break
           @unknown default:
               fatalError()
           }
    }
    
    func handlePaymentResult(_ payment: ApiPayment) {
        switch payment.status {
           case "paid":
            print("done")
            customerApi.successPayment(orderId: serviceManager.selectedOrder?._id ?? "", paymentid: payment.id, success: { _ in
                viewRouter.currentPage = "CompleteOrderScreen"
            }, failure: { _ in
                
            })
//            UserApiUtil.payForBooking(id: serviceManager.bookingId ?? "", paymentId: payment.id, amount: String(payment.amount),  success: { _ in
//                viewRouter.currentPage = "PaymentCompleteScreen"
//            }, failure: { _ in
//
//            })
           
               break
           default:
               print("failure")
           }
    }
    
    func handlePaymentError(_ error: Error) {
        print(error)
    }
}

struct PaymentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentScreen()
    }
}
