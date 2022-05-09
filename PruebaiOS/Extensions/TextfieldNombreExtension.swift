//
//  TextfieldNombreExtension.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 09/05/22.
//

import Foundation
import UIKit

extension NombreCompletoCell: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard !string.isEmpty else {
            return true
        }
        
        if textField.keyboardType == .alphabet {
            if !CharacterSet(charactersIn: "qwertyuiopasdfghjklñzxcvbnm QWERTYUIOPASDFGHJKLÑZXCVBNM").isSuperset(of: CharacterSet(charactersIn: string)) {
                return false
            }
        }
        if let text = textField.text, let range = Range(range, in: text) {
            let textlength = text.replacingCharacters(in: range, with: string)
            guard textlength.count <= 35
                    
            else {
                if string.count > 1 {
                }
                return false
            }
        }
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        texfieldNombre.resignFirstResponder()
    }
    
    

}
