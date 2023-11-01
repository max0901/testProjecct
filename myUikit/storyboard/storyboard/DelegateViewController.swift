//
//  DelegateViewController.swift
//  storyboard
//
//  Created by 이정민 on 11/1/23.
//
//Delegate란 위임자,대리자라고 함
import UIKit

protocol MasterDelegate{
    //위임자를 protocol로 만듬
    func doTask()
}
class DelegateViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
     
    @IBOutlet weak var textField: UITextField!
    
    var admin:Admin?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        admin=Admin(delegate: self)
    }
    
    @IBAction func actionBtn(_ sender: Any) {
        if let name=textField.text{
            helloLabel.text="hello\(name)"
        }
        admin?.delegate.doTask()
        
    
    }
   
}

extension DelegateViewController:MasterDelegate{
    func doTask() {
        print("일중")
    }
}
struct Admin{
    var delegate: MasterDelegate
        //위임받는 코드
}
