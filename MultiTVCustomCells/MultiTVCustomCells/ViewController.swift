//
//  ViewController.swift
//  MultiTVCustomCells
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.register(FirstTableViewCell.nib(), forCellReuseIdentifier: FirstTableViewCell.identifier)
        table.register(SecondTableViewCell.nib(), forCellReuseIdentifier: SecondTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
    }

    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        
        if indexPath.row % 2 == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath)
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: FirstTableViewCell.identifier, for: indexPath)
        }
        
        return cell!
    }
    
    
}

