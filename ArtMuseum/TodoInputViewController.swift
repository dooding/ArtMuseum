//
//  TodoInputViewController.swift
//  ArtMuseum
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)

}

class TodoInputViewController: UIViewController {

    @IBOutlet weak var taskNameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addAction(_ sender: Any) {
        if taskNameTextfield.text != ""{
            delegate?.addTask(name: taskNameTextfield.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate:AddTask?
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
