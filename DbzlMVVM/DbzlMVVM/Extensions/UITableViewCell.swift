//
//  UITableViewCell.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

import UIKit

extension UITableViewCell {
    static func registerCellXib(with tableview: UITableView){
        let nib = UINib(nibName: "\(self)", bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: "\(self)")
    }
}
