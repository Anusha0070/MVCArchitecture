//
//  CountryModel.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/30/24.
//

//struct CountryData: Codable {
//    let country_data: [Country]
//}

struct Country: Codable {
    let capital: String?
    let code: String?
    let currency: CountryCurrency
    let flag: String?
    let language: CountryLanguage
    let name: String?
    let region: String?
}

struct CountryCurrency: Codable {
    let code: String?
    let name: String?
    let symbol: String?
}

struct CountryLanguage: Codable {
    let code: String?
    let name: String?
}
