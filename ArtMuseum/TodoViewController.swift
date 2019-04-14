//
//  TodoViewController.swift
//  ArtMuseum
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddTask {
    
    var tasks:[Task] = []

    @IBOutlet weak var tabelView: UITableView!
    override func viewDidLoad() {
        tasks.append(Task(name:"<add todo list>"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }//row가 몇개냐
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
      
        return cell
    } //정해진 개수를 부르는게 아니라서 필요
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destvc = segue.destination as! TodoInputViewController
        destvc.delegate = self
    }
    
    func addTask(name: String) {
        tasks.append(Task(name: name))
        tabelView.reloadData()
    }
    

}

class Task{
    var name = " "
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
}
