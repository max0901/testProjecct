//
//  ProfileDetailViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/3/23.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var profileTextLabel: UILabel!
    var inputText:String=""
    override func viewDidLoad() {
        super.viewDidLoad()

        profileTextLabel.text=inputText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
