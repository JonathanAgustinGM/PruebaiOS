//
//  ColorFavoritoCell.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 09/05/22.
//

import UIKit

class ColorFavoritoCell: UITableViewCell {

    @IBOutlet weak var ColorTable: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        ColorTable.dataSource = self
        ColorTable.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
