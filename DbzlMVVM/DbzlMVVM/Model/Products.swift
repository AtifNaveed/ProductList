//
//  Products.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

struct Products<T:Decodable>: Decodable {
    // MARK: - Properties
    let results: [Item]
    let pagination: Page
    enum CodingKeys: String, CodingKey {
        case results = "results"
        case pagination = "pagination"
    }
}
