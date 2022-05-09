//
//  FechadeNacimientoCell.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 09/05/22.
//

import UIKit
import Foundation

class FechadeNacimientoCell: UITableViewCell, NSUserActivityDelegate {
    @IBOutlet weak var fechalabel: UILabel!
    @IBOutlet weak var bDatePicker: UIDatePicker!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bDatePicker.datePickerMode = .date
        if bDatePicker.isSelected == true {
        fechalabel.text = "\(bDatePicker.date)"
        }
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
}
}
