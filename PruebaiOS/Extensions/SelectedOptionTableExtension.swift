//
//  SelectedOptionTableExtension.swift
//  PruebaiOS
//
//  Created by Jordy Gracia on 09/05/22.
//

import Foundation
import Kingfisher
import UIKit

extension SelectedOptionsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        finalList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let UsarCeldaNombre = finalList[indexPath.section]
        switch UsarCeldaNombre {
        case "Camara":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "camaracell") as? CamaraCell
            cell?.ImageOfCamera.image = Capturedimage
            return cell!
        case "Foto":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "fotocell") as? FotoCell
            // imagen de la prueba no era accesible URL, se uso otra ( se obtiene desde url)
            cell?.Imagen.kf.setImage(with: URL(string: "https://1.bp.blogspot.com/-YdEpM7wbIKo/Xd8leK5yXOI/AAAAAAAABQo/H-24pS2Su9wb5JG1k9bTraw4W2zlRS9awCPcBGAYYCw/s1600/vegeta2000.png"))
            return cell!
        case "Nombre completo":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "nombrecompletocell") as? NombreCompletoCell
            return cell!
        case "Numero telefonico":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "numerotelefonicocell") as? NumeroTelefonicoCell
            return cell!
        case "Fecha de nacimiento":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "fechadenacimientocell") as? FechadeNacimientoCell
                
                return cell!
            
        case "Sexo":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "sexocell") as? SexoCell
            return cell!
        case "Color favorito":
            let cell = OptionsTable.dequeueReusableCell(withIdentifier: "colorfavoritocell") as? ColorFavoritoCell
            return cell!
        default:
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            return cell
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        finalList[section]
    }
}

extension SelectedOptionsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if finalList[indexPath.section] == "Camara" {
            performSegue(withIdentifier: "camerasegue", sender: self)
        }
    }
}
