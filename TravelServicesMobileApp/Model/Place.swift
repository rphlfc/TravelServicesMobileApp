//
//  Place.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 24/10/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct Place: Identifiable {
    let id = UUID().uuidString
    var image: String
    var name: String
    var location: String
    var rating: String
}

let places = [
    Place(image: "image1", name: "Catherine's\nMonastery", location: "Norway", rating: "4.9"),
    Place(image: "image2", name: "Metéora\nMonasteries", location: "Switzerland", rating: "4.8")
]
