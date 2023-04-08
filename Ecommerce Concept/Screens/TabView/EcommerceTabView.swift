//
//  EcommerceTabView.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

struct EcommerceTabView: View {

    @State var selectedTabState: TabState = .explorer
    @State var selectedCategory: CategorySelectionState = .phones

    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        ZStack {
            switch selectedTabState {
            case .explorer:
                HomeStoreView(selectedCategory: $selectedCategory)
            case .cart:
                CartView()
            case .favorites:
                FavoritesView()
            case .account:
                AccountView()
            }
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $selectedTabState)
            }
        }
    }
}

struct EcommerceTabView_Previews: PreviewProvider {
    static var previews: some View {
        EcommerceTabView()
    }
}
