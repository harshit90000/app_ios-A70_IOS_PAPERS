//
//  MycellTableViewCell.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class MycellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var Carnamelbl: UILabel!
    @IBOutlet weak var Carcolorlbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
