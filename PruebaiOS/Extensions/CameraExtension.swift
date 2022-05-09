//
//  CameraCellExtension.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import Foundation
import Photos
import PhotosUI
import UIKit

var Capturedimage = UIImage(systemName: "camera.shutter.button.fill")

extension CameraController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        print(info)
        let data = convertUIimage(info)
        if let finalImage = data[converInfoKey(UIImagePickerController.InfoKey.editedImage)] as? UIImage {
            print(finalImage)
            Capturedimage = finalImage
        }
        dismiss(animated: true)
        let alert = UIAlertController(title: "Foto cargada", message: "Tu foto ha sido cargada, vuelve atras para continuar", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    func convertUIimage(_ imput: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
        return Dictionary(uniqueKeysWithValues: imput.map({ key, value in (key.rawValue, value) }))
    }
    
    func converInfoKey(_ imput: UIImagePickerController.InfoKey) -> String {
        return imput.rawValue
    }
}

