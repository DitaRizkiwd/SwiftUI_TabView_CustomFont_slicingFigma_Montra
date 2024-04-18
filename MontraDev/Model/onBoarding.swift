//
//  onBoarding.swift
//  MontraDev
//
//  Created by MACBOOK PRO on 18/04/24.
//

import Foundation

struct onBoarding : Identifiable, Hashable{
    let id = UUID()
    var image: String
    var title: String
    var description : String
    var tag : Int
    
}
extension onBoarding{
    static let data: [onBoarding] = [
        onBoarding(image: "money", title: "Gain total control \nof your money", description: "Become your own money manager \nand make every cent count", tag: 0),
        onBoarding(image: "cash", title: "Know where your \nmoney goes", description: "Track your transaction easily \ncategories and financial report", tag: 1),
        onBoarding(image: "plan", title: "Planning ahead", description: "Setup your budget for each category \nso you in control", tag: 2)
    
    ]
}
