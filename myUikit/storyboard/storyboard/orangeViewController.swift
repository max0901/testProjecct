//
//  orangeViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/3/23.
//

import UIKit
struct People{
    let name:String
    let age:Int
}
class orangeViewController: UIViewController {
    
    var friends:[People]=[
    People(name: "리이오", age: 20)
    ]
    @IBOutlet weak var insertName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier  == "goNext"{
            let viewController = segue.destination as! GreenViewController
            viewController.inputName=insertName.text!
            viewController.friends=friends
        }
    }
    
    
    
}
