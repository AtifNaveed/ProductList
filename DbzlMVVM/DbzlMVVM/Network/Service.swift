//
//  Service.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

import Alamofire

struct Service {
    // MARK: - Singleton
    static let shared = Service()
    
    // MARK: - URL
    private var apiURL = "\(AppConstants.baseUrl)\(APIEndPoint.getProducts.rawValue)"
    
    // MARK: - Services
    func requestFetchData(completion: @escaping (Products<Item>?, Error?) -> ()) {
        AF.request(apiURL).validate().responseDecodable(of: Products<Item>.self) { (response) in
            //print(response)
            if let error = response.error {
                completion(nil, error)
                return
            }
            completion(response.value, nil)
        }
    }
    
}
