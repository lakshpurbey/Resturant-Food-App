//
//  FoodListView.swift
//  Anbe Resturant Assignment
//
//  Created by Laksh Purbey on 10/06/2022.
//

import SwiftUI

struct FoodListView: View {


    var viewModel : ItemsData

    var body: some View {

        VStack {
            VStack(spacing: 10) {
                ImageView(avatarImage: UIImage(named: viewModel.image)!)
                VStack (alignment: .leading, spacing: 20){
                    TextView(label: "FoodName: ", text: viewModel.name)
                    TextView(label: "Quantity : ", text: String(viewModel.quantity!))
                    TextView(label: "Price : ", text: String(viewModel.price!))

                }
                .padding(.top, 20)
                Spacer()
            }

            }
            .navigationBarTitle("Food Details")
        }
}

struct ImageView: View {
    let avatarImage: UIImage
    private let screenWidth = UIScreen.main.bounds.width

    var body: some View {
        HStack {
            Image(uiImage: avatarImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screenWidth * 0.5,
                       height: screenWidth * 0.5,
                       alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.orange, lineWidth: 1))
        }
    }
}

struct TextView: View {
    let label: String
    let text: String

    var body: some View {
        HStack {
            Text(label).bold()
            Text(text).bold()
        }
    }
}

