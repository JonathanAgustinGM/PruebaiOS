//
//  CamaraCell.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import UIKit
import Foundation
class CamaraCell: UITableViewCell {
    @IBOutlet weak var ImageOfCamera: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func takepicture(_ sender: Any) {
   
    }
}
