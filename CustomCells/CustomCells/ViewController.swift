//
//  ViewController.swift
//  CustomCells
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let data = ["first", "second", "third", "four", "five", "six", "seven"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib (nibName: "CustomCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "CustomCell")
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.myLabel.text = data[indexPath.row]
        cell.myImage.backgroundColor = .blue
        return cell
    }
}








