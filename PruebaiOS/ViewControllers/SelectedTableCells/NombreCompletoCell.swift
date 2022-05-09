//
//  NombreCompletoCell.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 09/05/22.
//

import UIKit

class NombreCompletoCell: UITableViewCell {

    @IBOutlet weak var texfieldNombre: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        texfieldNombre.keyboardType = .alphabet
        texfieldNombre.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
