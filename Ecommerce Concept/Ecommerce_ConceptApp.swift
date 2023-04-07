//
//  Ecommerce_ConceptApp.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

@main
struct Ecommerce_ConceptApp: App {

    var order = Order()

    var body: some Scene {
        WindowGroup {
            SplashView().environmentObject(order)
        }
    }
}
