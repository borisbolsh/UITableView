//
//  ViewController.swift
//  HeaderFooterTableV
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    let data = [
        ["oneone", "onetwo", "onethree"],
        ["twoone", "twotwo", "twothree"],
        ["threeone", "threetwo", "threethree"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 160))
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 160))
        
        header.backgroundColor = .blue
        footer.backgroundColor = .blue
        
        let label = UILabel(frame: header.bounds)
        label.text = "Header"
        label.textAlignment = .center
        label.textColor = .white
        header.addSubview(label)
        
        let label2 = UILabel(frame: footer.bounds)
        label2.text = "Footer"
        label2.textAlignment = .center
        label2.textColor = .white
        footer.addSubview(label2)
        
        table.tableHeaderView = header
        table.tableFooterView = footer
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
   
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        cell.backgroundColor = .systemGray2
        return cell
    }
    
    
}
