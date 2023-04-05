//
//  SplashView.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)

            Ellipse()
                .frame(width: 132, height: 132)
                .foregroundColor(.accentColor)
                .position(x: 132, y: 382)

            Text("Ecommerce \nConcept")
                .font(.custom(CustomFonts.markProHeavy.rawValue, size: 30))
                .foregroundColor(.white)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
