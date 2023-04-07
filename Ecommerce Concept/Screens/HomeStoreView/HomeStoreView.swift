//
//  ContentView.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

struct HomeStoreView: View {
    var body: some View {
        VStack {

            VStack {   // Select Category collection
                HStack {
                    // Title + view all Button
                }
                HStack {
                    // Category Collection Round
                }

                HStack {
                    // Search bar + qr button
                }

                VStack {
                    HStack {
                        // Hot Sales Title + see more button
                    }
                    // Banner
                }

                VStack {
                    HStack {
                        // Best Seller Title + see more button
                    }

                    // List View

                }

            }



            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Home/Explorer View")
                .font(.custom(CustomFonts.markProBold.rawValue, size: 64))
        }
        .padding()
    }
}

struct HomeStoreView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStoreView()
    }
}
