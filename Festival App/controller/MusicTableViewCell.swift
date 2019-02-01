//
//  MusicTableViewCell.swift
//  Festival App
//
//  Created by mobapp06 on 01/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var afbeeldinFestival: UIImageView!
    @IBOutlet weak var lblDag: UILabel!
    @IBOutlet weak var lblDatum: UILabel!
    @IBOutlet weak var lblUur: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
