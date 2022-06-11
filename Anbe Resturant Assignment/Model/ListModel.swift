//
//  ListModel.swift
//  Anbe Resturant Assignment
//
//  Created by Laksh Purbey on 10/06/2022.
//

import Foundation

struct ItemsData: Identifiable {
    var id = UUID()
    var image: String
    var name:  String
    var price: Int?
    var tax:   Int?
    var quantity: Int?
}
