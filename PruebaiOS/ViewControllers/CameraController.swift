//
//  CameraController.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 09/05/22.
//

import Foundation
import Photos
import PhotosUI
import UIKit

class CameraController: UIViewController {
    static let shared = CameraController()
        let picker = UIImagePickerController()
        
        @IBOutlet var FotoElegida: UIImageView!
        @IBOutlet var ddd: UIButton!
        override func viewDidLoad() {
            super.viewDidLoad()
            picker.delegate = self
            picker.allowsEditing = true
            picker.sourceType = .camera
            present(picker, animated: true, completion: nil)

}

}
