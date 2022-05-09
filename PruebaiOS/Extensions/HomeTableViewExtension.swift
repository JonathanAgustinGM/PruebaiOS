//
//  HomeViewExtension.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 06/05/22.
//

import Foundation
import UIKit

extension HomeView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        List.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = List.keys.sorted()[indexPath.row]
        cell.textLabel?.textAlignment = .center
        return cell
    }
    
}
extension HomeView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = SelectionTable.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
            List["\(List.keys.sorted()[indexPath.row])"] = true
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = SelectionTable.cellForRow(at: indexPath) {
            cell.accessoryType = .none
            List["\(List.keys.sorted()[indexPath.row])"] = false
    }
}
}
    extension HomeView {
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let finalDict = List.filter { $0.value == true }
            let finalList = finalDict.keys.sorted()
            if segue.identifier == "selectedoptions" {
                let destino = segue.destination as! SelectedOptionsView
                destino.finalList = finalList
            }
        }
        
        
}
    
