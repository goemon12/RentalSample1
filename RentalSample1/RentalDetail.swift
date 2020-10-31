//
//  RentalDetail.swift
//  RentalSample1
//
//  Created by Tadahiro Kato on 2020/10/31.
//

import SwiftUI

struct RentalDetail: View {
    var rental: RentalData
    var f: DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ja_JP")
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }
    
    func statMsg(stat: Int) -> String {
        var msg = ""
        switch rental.stat {
        case 0:
            msg = "保管中"
        case 1:
            msg = "貸出中"
        case 2:
            msg = "返却済"
        default:
            msg = ""
        }
        return msg
    }

    var body: some View {
        VStack {
            Text(rental.title)
            Image(rental.imageName)
            Text(statMsg(stat: rental.stat))
            Text(f.string(from: rental.rentalDate))
            Text(f.string(from: rental.returnDate))
            Spacer()
        }
        .padding()

        .navigationBarTitle(Text(verbatim: rental.title), displayMode: .inline)
    }
}

struct RentalDetail_Previews: PreviewProvider {
    static var previews: some View {
        RentalDetail(rental: rentalArray[0])
    }
}
