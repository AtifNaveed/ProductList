//
//  Page.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

struct Page: Decodable {
    // MARK: - Properties
    let key: String?
    enum CodingKeys: String, CodingKey {
        case key = "key"
    }
}
