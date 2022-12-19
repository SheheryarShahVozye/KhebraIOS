//
//  ServiceManager.swift
//  Khebra
//
//  Created by Sheheryar on 19/09/2022.
//

import Foundation

class ServiceManager: ObservableObject {

    @Published var services: [Service] = []
    @Published var selectedServiceId: Service?
    @Published var selectedTechnician: TechnicianProfile?
    @Published var createdOrderData: CreateOrderResponse?
    @Published var selectedLocation: String = ""
    @Published var selectedLat: Double = 0.0
    @Published var selectedLong: Double = 0.0
    
    @Published var selectedService: String?
    @Published var documentsData: [Data]?
    @Published var selectedOrder: OrderObjectElement?
    

}
