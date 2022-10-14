//
//  Toon.swift
//  ConsumeToonAPI
//
//  Created by Timmy Lau on 2022-10-14.
//

import Foundation

//conform to the 2 protocols
struct Toon: Codable, Identifiable{
    
    var id: Int
    var lastName: String
    var firstName: String
    var occupation: String
    var gender: String
    var pictureUrl: String
    var votes: Int
}
