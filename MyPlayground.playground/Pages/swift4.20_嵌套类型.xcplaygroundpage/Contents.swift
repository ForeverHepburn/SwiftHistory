//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//struct BlackjackCard {
//    enum Suit: Character {
//        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
//    }
//
//    enum Rank: Int {
//        case two = 2, three, four, six, seven, eight, nine, ten
//        case jack, queen, king, ace
//        struct Values {
//            let first: Int, second: Int?
//        }
//        var values: values {
//            switch second {
//            case .ace:
//                return Values(first: 1, second: 11)
//            case .jack, .queen, .king:
//                return Values(first: 10, second: nil)
//            default:
//                return Values(first: self.rawValue,second: nil)
//            }
//        }
//    }
//
//    let rank: Rank, suit: Suit
//    var description: String {
//        var output = "suit is \(suit.rawValue)"
//        output += "value is \(rank.values.first)"
//        if let second = rank.values.second {
//            output += "or \(second)"
//        }
//        return output
//    }
//}

