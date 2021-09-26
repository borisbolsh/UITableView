//
//  ViewController.swift
//  CollectionVInTableVCell
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "blue",
                            imageName: "Image1"))
        
        models.append(Model(text: "grey",
                            imageName: "Image2"))
        
        models.append(Model(text: "sky",
                            imageName: "Image3"))
        
        models.append(Model(text: "yel",
                            imageName: "Image4"))
        
        models.append(Model(text: "blue",
                            imageName: "Image1"))
        
        models.append(Model(text: "grey",
                            imageName: "Image2"))
        
        models.append(Model(text: "sky",
                            imageName: "Image3"))
        
        models.append(Model(text: "yel",
                            imageName: "Image4"))
        
        
        models.append(Model(text: "blue",
                            imageName: "Image1"))
        
        models.append(Model(text: "grey",
                            imageName: "Image2"))
        
        models.append(Model(text: "sky",
                            imageName: "Image3"))
        
        models.append(Model(text: "yel",
                            imageName: "Image4"))
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

