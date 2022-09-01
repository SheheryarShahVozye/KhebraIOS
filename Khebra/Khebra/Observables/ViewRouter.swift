
import Combine
import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    var viewStack: [String] = []
    let objectWillChange = PassthroughSubject<ViewRouter, Never>()

    var currentPage: String = "splashscreen" {
        willSet(newValue) {
            if !newValue.isEmpty, currentPage != newValue, previousPage != currentPage {
                if previousPage != newValue {
                    previousPage = currentPage
                    viewStack.append(previousPage)
                } else {
                    viewStack.removeAll(where: { $0 == newValue })
                    previousPage = currentPage
                    viewStack.append(previousPage)
                }

               
            }
        }
        didSet {
            objectWillChange.send(self)
        }
    }

    var previousPage: String = "" {
        didSet {
            objectWillChange.send(self)
        }
    }

//    var errorMessage: String = "" {
//        didSet {
//            objectWillChange.send(self)
//        }
//    }
//
//    var showErrorAlert: Bool = false {
//        didSet {
//            objectWillChange.send(self)
//        }
//    }

    func goBack() {
        if !previousPage.isEmpty {
            currentPage = previousPage

            if !viewStack.isEmpty {
                viewStack.removeLast()
            }

            if !viewStack.isEmpty {
                previousPage = viewStack[viewStack.endIndex - 1]
            }
        }
    }

    func trashStack() {
        viewStack = []
    }
    func removeReference(ref: String) {
        viewStack.removeAll(where: { $0 == ref })
    }
    func setCurrentPageWithRemoveReference(addRef: String, removeRef: String) {
        currentPage = addRef
        removeReference(ref: removeRef)
        previousPage = viewStack[viewStack.count - 1]
    }
}

