//
//  CustomTabBar.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

private enum TabBarIcons: String {
    case circle = "circlebadge.fill"
    case cart = "cartIcon"
    case favorites = "heart"
    case account = "person"
}

enum TabState: Int {
    case explorer = 0
    case cart = 1
    case favorites = 2
    case account = 3
}

struct CustomTabBar: View {

    @EnvironmentObject var order: Order
    @Binding var selectedTab: TabState

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    selectedTab = .explorer
                } label: {
                    HStack {
                        Image(systemName: TabBarIcons.circle.rawValue)
                            .resizable()
                            .foregroundColor(selectedTab == .explorer ? .accentColor : .white)
                            .frame(width: 8, height: 8)
                        Text("Explorer")
                            .foregroundColor(selectedTab == .explorer ? .accentColor : .white)
                            .font(.custom(CustomFonts.markProBold.rawValue, size: 15))
                    }
                }
                Spacer()
                Button {
                    selectedTab = .cart
                } label: {
                    TabBarButton(isSelected: selectedTab == .cart, imageName: TabBarIcons.cart.rawValue)
                        .badge(order.items.count)
                }
                Spacer()
                Button {
                    selectedTab = .favorites
                } label: {
                    TabBarButton(isSelected: selectedTab == .favorites, imageName: TabBarIcons.favorites.rawValue)
                }
                Spacer()
                Button {
                    selectedTab = .account
                } label: {
                    TabBarButton(isSelected: selectedTab == .account, imageName: TabBarIcons.account.rawValue)
                }
                Spacer()
            }
        }
        .frame(height: 60)
        .background(Color.backgroundColor)
        .cornerRadius(30)
        .padding()
    }
}
