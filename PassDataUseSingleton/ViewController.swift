//
//  ViewController.swift
//  PassDataUseSingleton
//
//  Created by Hiếu Nguyễn on 7/19/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var indexPath: IndexPath!

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if indexPath != nil{
            textField.text = String(SingleTon.sharedInstance.numbers[indexPath.row])
        }
    }
    
    
    @IBAction func sendingData(_ sender: Any) {
        if indexPath != nil {
            SingleTon.sharedInstance.edit(at: indexPath.row, and: Int(textField.text ?? "") ?? 0)
        }else {
            SingleTon.sharedInstance.addData(number: Int(textField.text ?? "") ?? 0)
        }
        dismiss(animated: true, completion: nil)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

