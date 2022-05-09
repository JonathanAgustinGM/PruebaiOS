//
//  SelectedOptionsView.swift
//  PruebaiOS
//
//  Created by Jonathan Gracia on 08/05/22.
//

import UIKit

class SelectedOptionsView: UIViewController {
    var finalList: Array<String> = []

    @IBOutlet weak var OptionsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        OptionsTable.dataSource = self
        OptionsTable.delegate = self
        cellList.forEach {
            registerCell(name: $0)
        }
        }
        

        // Do any additional setup after loading the view.
        func registerCell(name: String) {
            OptionsTable.register(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: name.lowercased())
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        OptionsTable.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
