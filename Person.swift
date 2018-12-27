//
//  Person.swift
//  People
//
//  Created by Lotanna Igwe-Odunze on 12/22/18.
//  Copyright © 2018 Sugabelly LLC. All rights reserved.
//

import Foundation

struct People: Codable {
    let results: [Result]
}

struct Result: Codable {
    let name: Name
    let email, cell: String
    let picture: Picture
}

struct Name: Codable {
    let title, first, last: String
}

struct Picture: Codable {
    let large, medium, thumbnail: String
}
