//
//  NumeroTelefonicoCell.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import UIKit

class NumeroTelefonicoCell: UITableViewCell {

    @IBOutlet weak var textfieldNumero: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        textfieldNumero.keyboardType = .numberPad
        textfieldNumero.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
