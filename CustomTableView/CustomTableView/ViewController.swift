//
//  ViewController.swift
//  CustomTableView
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    let data: [CarModel] = [
        CarModel(image: "ph1", title: "Bmw"),
        CarModel(image: "ph2", title: "Audi"),
        CarModel(image: "ph3", title: "Opel"),
        CarModel(image: "ph4", title: "Mazda"),
        CarModel(image: "ph5", title: "Vaz"),
        CarModel(image: "ph6", title: "Firrari"),
        CarModel(image: "ph7", title: "Mersedes"),
        CarModel(image: "ph8", title: "Toyota")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.label.text = data.title
        cell.iconImageView.image = UIImage(named: data.image)
        return cell
    }
    
    
}
