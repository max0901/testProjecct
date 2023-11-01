//
//  ViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/1/23.
//

import UIKit

class ViewController: UIViewController {
  

    @IBOutlet weak var helloLabel: UILabel!
     
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func actionBtn(_ sender: Any) {
        if let name=textField.text{
            helloLabel.text="hello\(name)"
        }
    }
    
}



