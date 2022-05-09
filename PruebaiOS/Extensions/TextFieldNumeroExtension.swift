//
//  TextFieldNumeroExtension.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import Foundation
import UIKit

extension NumeroTelefonicoCell: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard !string.isEmpty else {
            return true
        }
        
        if textField.keyboardType == .numberPad {
            if !CharacterSet(charactersIn: "1234567890").isSuperset(of: CharacterSet(charactersIn: string)) {
                return false
            }
        }
        if let text = textField.text, let range = Range(range, in: text) {
            let textlength = text.replacingCharacters(in: range, with: string)
            guard textlength.count <= 10
                    
            else {
                if string.count > 1 {
                }
                return false
            }
        }
        return true
    }
}
