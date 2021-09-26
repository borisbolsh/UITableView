//
//  ViewController.swift
//  CustomCells3sec
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if indexPath.row > 5 {
//            let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
//            customCell.configure(with: "Custum Cell", imageName: "gear")
//            return customCell
//        }
        
        if indexPath.row > 2 {
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell
    
            return fieldCell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        
        cell.textLabel?.text = "Hello World!"
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch), for: .valueChanged)
        mySwitch.isOn = true
        
        cell.accessoryView = mySwitch

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        94
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            print("turned on")
        }
        else {
            print("off")
        }
    }
    
}















