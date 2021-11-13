//
//  NSObject.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

import UIKit

extension NSObject {
    class var stringFromClass: String {
        let name = String(describing: self)
        return name
    }
}
