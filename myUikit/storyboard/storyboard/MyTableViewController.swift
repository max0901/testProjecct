//
//  myTableViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/1/23.
//

import UIKit

class MyTableViewController: UIViewController {
    let cellData=["this is mata","this is mac","this is aplle"]
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .brown
        myTableView.backgroundColor = .blue
        myTableView.delegate=self
        myTableView.dataSource=self
    }
    

  
}

extension MyTableViewController :
    UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    //몇개의 섹션을 가질것인지
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    //리스트 몇개의 줄을 만들껀지
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text=cellData[indexPath.row]
        return cell
    }
    //어떤 데이터를 넣어서 리스트를 만들껀지
    
    
}
