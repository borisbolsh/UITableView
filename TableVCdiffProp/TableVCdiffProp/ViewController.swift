//
//  ViewController.swift
//  TableVCdiffProp
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButtonOne() {
        
        let vc = MyTableViewController()
        vc.models = [("apple", {
            print("apple")
        }), ("orange", {
            print("orange")
        }), ("grapes", {
            print("grapes")
        })]
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func didTapButtonTwo() {
    
        let vc  = MyTableViewController()
        vc.models = [("samsung", {
            print("samsung")
        }), ("lg", {
            print("lg")
        }), ("htc", {
            print("htc")
        }), ("apple", {
            print("apple")
        }), ("motorola", {
            print("motorola")
        })]
        navigationController?.pushViewController(vc, animated: true)
    
    }

}

