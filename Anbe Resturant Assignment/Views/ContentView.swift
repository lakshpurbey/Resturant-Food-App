//
//  ContentView.swift
//  Anbe Resturant Assignment
//
//  Created by Laksh Purbey on 08/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {
            ListView()
            .navigationTitle("Lists of items")
        }
        SummaryView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
