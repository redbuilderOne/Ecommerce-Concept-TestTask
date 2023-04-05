//
//  EcommerceTabView.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

struct EcommerceTabView: View {

    //    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
             HomeStoreView()
                        .tabItem { Label("Home", systemImage: "house") }

            // CartView
            //            .tabItem { Label("Home", systemImage: "house") }
            //            .badge(order.items.count)

            // FavoritesView
            //            .tabItem { Label("Home", systemImage: "house") }

            // AccountView
            //            .tabItem { Label("Home", systemImage: "house") }

        }
    }
}

struct EcommerceTabView_Previews: PreviewProvider {
    static var previews: some View {
        EcommerceTabView()
    }
}
