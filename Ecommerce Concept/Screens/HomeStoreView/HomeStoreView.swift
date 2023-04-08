//
//  ContentView.swift
//  Ecommerce Concept
//
//  Created by Дмитрий Скворцов on 05.04.2023.
//

import SwiftUI

enum CategorySelectionState: Int {
    case phones = 0
    case computer = 1
    case health = 2
    case books = 3
}

struct Category: Hashable, Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
}

final class CategoryGridViewModel: ObservableObject {

    let categoryArray: [Category] = [
        Category(title: "Phones", imageName: "phonesCategory"),
        Category(title: "Computer", imageName: "computerCategory"),
        Category(title: "Health", imageName: "healthCategory"),
        Category(title: "Books", imageName: "booksCategory")
    ]

    var selectedCategory: Category? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
}

struct HomeStoreView: View {

    @Binding var selectedCategory: CategorySelectionState
    @ObservedObject var categoryViewModel = CategoryGridViewModel()

    let rows: [GridItem] = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        //        ScrollView { }
        VStack {
            HStack {
                Spacer()
                Image("locationSpot")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 12, height: 15.31)
                    .foregroundColor(.accentColor)
                Text("Zihuatanejo, Gro")
                    .font(.custom(CustomFonts.markProMedium.rawValue, size: 15))
                Image("locationChevron")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 10, height: 5)
                    .foregroundColor(Color.inactiveGray)
                Spacer()
                Image("funnel")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 11, height: 13)
                    .foregroundColor(Color.backgroundColor)
            }
            VStack {   // Select Category collection
                HStack {
                    Text("Select Category")
                        .font(.custom(CustomFonts.markProBold.rawValue, size: 25))
                        .foregroundColor(Color.backgroundColor)
                    Spacer()
                    Button {

                    } label: {
                        Text("view all")
                            .foregroundColor(.accentColor)
                    }
                    // Title + view all Button
                }
                HStack {
                    ScrollView(.horizontal) {
                    LazyHGrid(rows: rows) {
                        ForEach(categoryViewModel.categoryArray, id: \.self) { category in
                            Spacer()
                            Spacer()
                            VStack {
                                ZStack {
                                    Ellipse()
                                        .frame(width: 71, height: 71)
                                        .foregroundColor(categoryViewModel.selectedCategory == category ? .accentColor : .white)
                                    if category.imageName == "healthCategory" {
                                        Image(category.imageName)
                                            .resizable()
                                            .renderingMode(.template)
                                            .foregroundColor(categoryViewModel.selectedCategory == category ? .white : Color.backgroundColor)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                            .opacity(category.imageName == "healthCategory" ? 30 : 100)
                                    } else {
                                        Image(category.imageName)
                                            .resizable()
                                            .renderingMode(.template)
                                            .foregroundColor(categoryViewModel.selectedCategory == category ? .white : Color.inactiveGray)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                    }
                                }
                                .onTapGesture {
                                    categoryViewModel.selectedCategory = category
                                }

                                Text(category.title)
                                    .font(.custom(CustomFonts.markProMedium.rawValue, size: 12))


                            }

                            NavigationLink(value: categoryViewModel.selectedCategory) {
                                //                                    FrameworkTitleView(framework: framework)
                            }
                            .onTapGesture {
                                //                                    viewModel.selectedFramework = framework
                            }
                        }
                    }
                }


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
        }

        .padding()
    }


}


struct HomeStoreView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStoreView(selectedCategory: .constant(.phones))
    }
}
