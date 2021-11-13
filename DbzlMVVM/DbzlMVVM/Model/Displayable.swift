//
//  Displayable.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

protocol Displayable {
    // MARK: - Blueprints
  var productTitle: String { get }
  var productDate: (label: String, value: String) { get }
  var productPrice: (label: String, value: String) { get }
}
