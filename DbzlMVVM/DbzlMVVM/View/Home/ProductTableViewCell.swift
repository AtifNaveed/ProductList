//
//  ProductTableViewCell.swift
//  DbzlMVVM
//
//  Created by Atif on 12/11/2021.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    // MARK: - Properties
    @IBOutlet weak var lblProductTitle: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var lblCreatedDate: UILabel!
    @IBOutlet weak var ivProductImage: UIImageView!
    func configure(with item:Item?) {
        lblProductTitle.text = item?.productTitle
        lblProductPrice.text = "\(item?.productPrice.label ?? AppConstants.unkown_price)\(item?.productPrice.value ?? AppConstants.unkown_price)"
        lblCreatedDate.text =  "\(item?.productDate.label ?? AppConstants.unkown_date)\(item?.productDate.value ?? AppConstants.unkown_date)"
        let media_array = item?.image_urls_thumbnails ?? []
        if (media_array.count > 0) {
            let url = media_array[0]
            ivProductImage?.image(url: url)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
