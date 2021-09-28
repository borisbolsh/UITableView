//
//  ViewController.swift
//  MultipleCustomCells
//
//

import UIKit

class ViewController: UIViewController {
    
    let tableView : UITableView = {
        let tableView = UITableView()
        
        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame =  view.bounds
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier, for: indexPath) as! CodedTableViewCell
            cell.configure()
            
            return cell
        }
        
        if indexPath.row < 6 {
            let cell =  tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier,for: indexPath) as! ImageTableViewCell
            cell.configure(with: "ph1")
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier,for: indexPath)
        cell.textLabel?.text = "Simple"
        return cell
    }
    
}
