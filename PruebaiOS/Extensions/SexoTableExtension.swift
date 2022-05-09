//
//  SexoTableExtension.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 09/05/22.
//

import Foundation
import UIKit

extension SexoCell: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sexos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
      cell.textLabel?.text = sexos[indexPath.row]
        return cell
    }
    
    
}

extension SexoCell: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = sexoTable.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = sexoTable.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
   
}
 
