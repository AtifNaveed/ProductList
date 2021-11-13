//
//  AppConstants.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

struct AppConstants {
    //TODO: get default values from requirement provider
    static let unkown_name          = "[No name]"
    static let unkown_price         = "[No price]"
    static let unkown_date          = "[No date]"
    static let date_format_api      = "yyyy-MM-dd HH:mm:ss.SSSSSS"
    static let date_format_mobile   = "MMM d, yyyy"
    static let title_date           = "Date: "
    static let title_price          = "Price: "
    static let baseUrl              = "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default"
}
public enum APIEndPoint: String {
    case getProducts                = "/dynamodb-writer"
}
public struct APIEndPoints {
    private let types: [APIEndPoint] = [
        .getProducts
    ]
}
