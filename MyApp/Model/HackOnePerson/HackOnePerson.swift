//
//  ShowDogData.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import Foundation

struct HackOnePerson: Codable {
    let results: [ResultsHack]
}

struct ResultsHack: Codable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let login: Login
    let dob: Dob
    let phone: String
    let cell: String
    let id: ID
    let picture: Picture
    let nat: String
}

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct Location: Codable {
    let street: Street
    let city: String
    let state: String
    let country: String
    let postcode: Int
}

struct Login: Codable {
    let uuid : String
    let username : String
    let password : String
    let salt: String
}

struct Dob: Codable {
    let date: String
    let age: Int
}

struct ID: Codable {
    let name: String
}

struct Picture: Codable {
    let large: String
    let medium: String
}

struct Street: Codable {
    let number: Int
    let name: String
}
