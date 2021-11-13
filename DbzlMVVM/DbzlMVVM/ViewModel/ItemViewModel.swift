//
//  ItemViewModel.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

import UIKit

class ItemViewModel {
    // MARK: - Properties
    public var itemList: Array<Item>
    private var items: Products<Item>? {
        didSet {
            guard let items = items?.results else { return }
            self.itemList = items
            self.didFinishFetch?()
        }
    }
    var error: Error? {
        didSet { self.showAlertClosure?() }
    }
    var isLoading: Bool = false {
        didSet { self.updateLoadingStatus?() }
    }
    
    var titleString: String?
    var albumIdString: String?
    var photoUrl: URL?
    
    private var service: Service?
    
    // MARK: - Closures for callback
    var showAlertClosure: (() -> ())?
    var updateLoadingStatus: (() -> ())?
    var didFinishFetch: (() -> ())?
    
    // MARK: - Constructor
    init(_ service: Service) {
        self.service = service
        self.itemList = Array<Item>()
    }
    
    // MARK: - Network call
    func fetchDataFromApi() {
        self.isLoading = true
        self.service?.requestFetchData(completion: { (items, error) in
            if let error = error {
                self.error = error
                self.isLoading = false
                return
            }
            self.error = nil
            self.isLoading = false
            self.items = items
        })
    }
}
