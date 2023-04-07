//
//  TabBarButton.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 07.04.2023.
//

import SwiftUI

struct TabBarButton: View {
    var isSelected: Bool
    var imageName: String

    var body: some View {
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isSelected ? .accentColor : .white)
                .frame(width: 18, height: 18)
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(isSelected: true, imageName: "heart")
    }
}
