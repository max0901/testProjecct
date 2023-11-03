//
//  ProfileViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/3/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
   
    @IBOutlet weak var profileTableView: UITableView!
    
    var profileData = ["아이디변경","이메일","전화번호",
    "주소"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        profileTableView.dataSource = self
        profileTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profileSegue"{
            let vc = segue.destination as!
            ProfileDetailViewController
            vc.inputText=profileData[0]
        }
    }
}

extension ProfileViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath)
        
        cell.textLabel?.text = profileData[indexPath.row]
        return cell
    }
    
   
}
    

