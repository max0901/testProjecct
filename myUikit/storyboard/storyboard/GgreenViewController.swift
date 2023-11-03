//
//  greenViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/3/23.
//

import UIKit

class GreenViewController: UIViewController {

   
    @IBOutlet weak var name: UILabel!
    var inputName:String=""
    var friends:[People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text=friends.first?.name
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goNext2" {
            let viewController = segue.destination as!  EleViewController
            viewController.segueName = inputName
        }
    }
   

}
