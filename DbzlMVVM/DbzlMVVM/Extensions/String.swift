//
//  String.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

import UIKit

extension String {
    func displayableDate() -> String {
        let df = DateFormatter()
        df.dateFormat = AppConstants.date_format_api
        guard let date = df.date(from: self) else { return AppConstants.unkown_date }
        df.dateFormat = AppConstants.date_format_mobile
        return df.string(from: date)
    }
}

