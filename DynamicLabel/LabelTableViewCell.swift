//
//  LabelTableViewCell.swift
//  DynamicLabel
//
//  Created by Boy- on 8/1/2563 BE.
//  Copyright © 2563 Boy-. All rights reserved.
//

import UIKit

class LabelTableViewCell: UITableViewCell {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbSubTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func bind(title: String, subTitle: String) {
        lbTitle.text = title
        lbSubTitle.text = subTitle
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
