//
//  ListView.swift
//  Anbe Resturant Assignment
//
//  Created by Laksh Purbey on 10/06/2022.
//

import SwiftUI

var myData: [ItemsData] =
                [ItemsData(image: "food1", name: "Some Spicy Food", price: 200, tax: 15, quantity: 2),
                ItemsData(image: "food2", name: "Newari Style Food", price: 250, tax: 15, quantity: 3),
                ItemsData(image: "food3", name: "Peanut BreakFast", price: 300, tax: 15, quantity: 4),
                ItemsData(image: "food4", name: "BreakCum", price: 350, tax: 15, quantity: 5),
                ItemsData(image: "food5", name: "Delious Food", price: 500, tax: 15, quantity: 4),
                ItemsData(image: "food6", name: "Tomato smacho", price: 400, tax: 15, quantity: 2),
                ItemsData(image: "food7", name: "Vegetable Heart", price: 300, tax: 15, quantity: 1),
                ItemsData(image: "food8", name: "Mashala Vegetable", price: 500, tax: 15, quantity: 3),
                ItemsData(image: "food9", name: "Pasta Receipe", price: 600, tax: 15, quantity: 2),
                ItemsData(image: "food10", name: "Lemon Cocpoapa", price: 100, tax: 15, quantity: 5),
                ItemsData(image: "food11", name: "Beef Metern", price: 220, tax: 15, quantity: 6),
                ItemsData(image: "food12", name: "Pizza Slice", price: 100, tax: 15, quantity: 1)]

struct ListView: View {
    var body: some View {

        List {
            ForEach(myData) { list in

                        HStack {
                            Image(uiImage: UIImage(named: list.image)!).resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)

                            let pric = String(list.price ?? 0)
                            let ta   = String(list.tax ?? 0)
                            let qty  = String(list.quantity ?? 0)

                            let pr = "Price: \(pric)"
                            let tx = "Tax: \(ta) %"
                            let qt = "Qty: \(qty)"

                            //Find the Total Value
//                            let TotalPrice = myData.map { $0.price! }.reduce(0, +)
//                            let TotalQTY   = myData.map { $0.quantity! }.reduce(0, +)
//                            let TotalTax   = myData.map { $0.tax! }.reduce(0, +)

                            VStack {
                                Text(list.name).fontWeight(.bold)
                                Text(pr)
                                Spacer()

                                HStack{
                                    Text(qt)
                                    Text(tx).foregroundColor(.red)
                                }
                            }
                            NavigationLink(destination: FoodListView(viewModel: list)) {

                            }
                        }
            }
            .onDelete { indexSet in
                myData.remove(atOffsets: indexSet)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
