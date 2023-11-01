//
//  ViewController.swift
//  storyboardTest
//
//  Created by 이정민 on 11/1/23.
//

import UIKit

class ViewController: UIViewController {

     @IBAction func byn(_ sender: Any) {
        mylabel.text="max"
    }
    @IBOutlet weak var btnout: UIButton!
    @IBOutlet weak var mylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        // Do any additional setup after loading the view.
        
    }


}

