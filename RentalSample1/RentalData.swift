import Foundation

struct RentalData: Identifiable {
    var id: Int
    var title: String
    var imageName: String
    var stat: Int
    var rentalDate: Date
    var returnDate: Date
}

var rentalArray: [RentalData] = [
    RentalData(id: 1, title: "いぬ", imageName: "dog", stat: 0, rentalDate: Date(), returnDate: Date()),
    RentalData(id: 2, title: "さる", imageName: "monkey", stat: 1, rentalDate: Date(), returnDate: Date()),
    RentalData(id: 3, title: "とり", imageName: "bird", stat: 2, rentalDate: Date(), returnDate: Date()),
    RentalData(id: 4, title: "いぬ", imageName: "dog", stat: 0, rentalDate: Date(), returnDate: Date()),
    RentalData(id: 5, title: "さる", imageName: "monkey", stat: 1, rentalDate: Date(), returnDate: Date())
]
