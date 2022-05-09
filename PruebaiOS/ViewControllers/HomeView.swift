//
//  ViewController.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 06/05/22.
//

import UIKit

class HomeView: UIViewController {
    @IBOutlet var SelectionTable: UITableView!

    @IBOutlet var BotonNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        SelectionTable.dataSource = self
        SelectionTable.delegate = self
        SelectionTable.allowsMultipleSelection = true
        // Do any additional setup after loading the view.
    }

    @IBAction func FinishedOptionsSelection(_ sender: Any) {
        let SelectedList = List.filter { $0.value == true }
        if SelectedList != [:] {
            performSegue(withIdentifier: "selectedoptions", sender: self)
        } else {
            let alert = UIAlertController(title: "Ups", message: "No haz elegido nada", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
}

