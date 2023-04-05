//
//  SplashView.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

struct SplashView: View {

    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            EcommerceTabView()
        } else {
            ZStack {
                Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Ellipse()
                        .frame(width: 132, height: 132)
                        .foregroundColor(.accentColor)
                        .position(x: 132, y: 382)
                }
                .modifier(EaseInAnimationStyle(size: self.size, opacity: self.opacity))
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                VStack {
                    Text("Ecommerce \nConcept")
                        .font(.custom(CustomFonts.markProHeavy.rawValue, size: 30))
                        .foregroundColor(.white)
                }
                .modifier(EaseInAnimationStyle(size: self.size, opacity: self.opacity))
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

struct EaseInAnimationStyle: ViewModifier {

    var size: Double
    var opacity: Double

    func body(content: Content) -> some View {
        content
            .scaleEffect(size)
            .opacity(opacity)
    }
}

extension View {
    func easeInAnimationStyle() -> some View {
        self.modifier(EaseInAnimationStyle(size: 0.8, opacity: 0.5))
    }
}
