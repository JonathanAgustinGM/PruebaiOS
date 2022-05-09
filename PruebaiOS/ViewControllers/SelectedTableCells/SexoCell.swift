//
//  SexoCell.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import UIKit

class SexoCell: UITableViewCell {
    let sexos  = ["Masculino","Femenino"]

    @IBOutlet weak var sexoTable: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
    sexoTable.dataSource = self
    sexoTable.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
