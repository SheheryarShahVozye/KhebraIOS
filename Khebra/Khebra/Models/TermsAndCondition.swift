//
//  TermsAndCondition.swift
//  Khebra
//
//  Created by apple on 11/12/2022.
//

import Foundation


class TermsAndCondition: Codable {
    var id: String?
    var termsAndConditions: [TermsAndConditionElement]?
    var icon, createdAt, updatedAt: String?
    var v: Int?

   
}

// MARK: - TermsAndConditionElement
class TermsAndConditionElement: Codable {
    var title, text, id: String?

   
}

class AboutUsObject: Codable {
    var id: String?
    var aboutUs: [TermsAndConditionElement]?
    var icon, createdAt, updatedAt: String?
    var v: Int?
}

class PrivacyObject: Codable {
    var id: String?
    var privacyPolicy: [TermsAndConditionElement]?
    var icon, createdAt, updatedAt: String?
    var v: Int?
}

class TechnicalTermsObject: Codable {
    var id: String?
    var technicalTermsAndConditions: [TermsAndConditionElement]?
    var icon, createdAt, updatedAt: String?
    var v: Int?
}
