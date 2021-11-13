//
//  Item.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

struct Item: Decodable {
    // MARK: - Properties
    let created_at: String?
    let price: String?
    let name: String?
    let url: String?
    let uid: String?
    let image_ids: [String]?
    let image_urls: [String]?
    let image_urls_thumbnails: [String]?
    enum CodingKeys: String, CodingKey {
        case created_at = "created_at"
        case price = "price"
        case name = "name"
        case url = "url"
        case uid = "uid"
        case image_ids
        case image_urls
        case image_urls_thumbnails
    }
}
extension Item: Displayable {
    // MARK: - Displayables
    var productTitle: String {
        name?.capitalized ?? AppConstants.unkown_name
    }
    var productDate: (label: String, value: String) {
        guard let created_at_date = created_at else {
            return (AppConstants.title_date, AppConstants.unkown_date)
        }
        return (AppConstants.title_date, created_at_date.displayableDate())
    }
    var productPrice: (label: String, value: String) {
        (AppConstants.title_price, price ?? AppConstants.unkown_price)
    }
}

