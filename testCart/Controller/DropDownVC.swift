//
//  DropDownVC.swift
//  testCart
//
//  Created by intelmac on 16/02/21.
//

import UIKit

class DropDownVC: UIViewController, UITableViewDelegate, UITableViewDataSource, CustomCellUpdater {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "DropDownCell", bundle: nil), forCellReuseIdentifier: "Cell")

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DropDownCell
        cell.delegate = self
        return cell
    }
    
    func updateTableView() {
        tableView.reloadData() // you do have an outlet of tableView I assume
    }

}
