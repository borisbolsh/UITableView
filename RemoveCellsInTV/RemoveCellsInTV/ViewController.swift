//
//  ViewController.swift
//  RemoveCellsInTV
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var models = [
        "Hello World",
        "Hello World",
        "Hello World",
        "Hello World",
        "Hello World",
        "Hello World",
        "Hello World",
        "Hello World",
        "Hello World"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        table.dataSource = self
        table.delegate = self
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            
            models.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            tableView.endUpdates()
        }
    }
}












