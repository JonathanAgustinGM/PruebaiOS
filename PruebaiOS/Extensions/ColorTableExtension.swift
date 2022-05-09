//
//  ColorTableExtension.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import Foundation
import UIKit

extension ColorFavoritoCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = colores[indexPath.row]
        return cell
    }
    
    
}
extension ColorFavoritoCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = ColorTable.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = ColorTable.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
    }
}
}
