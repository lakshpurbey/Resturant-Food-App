//
//  SummaryView.swift
//  Anbe Resturant Assignment
//
//  Created by Laksh Purbey on 10/06/2022.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {

        ZStack {
            Color.yellow
                HStack {
                    Text("Total Summary")
                        .padding(5)
                    VStack{
                        Text("QTY: 36").fontWeight(.bold)
                        Text("Price: 2500").fontWeight(.bold)
                        Text("Tax: 375").fontWeight(.bold)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Button("Continue") {
                            print("Continue")
                        }.foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(5)
                    }
                }

        }
        .frame(width: 400, height: 100, alignment: .bottom)

    }

}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
