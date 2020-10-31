//
//  ContentView.swift
//  RentalSample1
//
//  Created by Tadahiro Kato on 2020/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(rentalArray) { item in
                NavigationLink(
                    destination: RentalDetail(rental: item),
                    label: {
                        RentalRow(rental: item)
                    })
            }
            .navigationBarTitle(Text("レンタル管理"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
