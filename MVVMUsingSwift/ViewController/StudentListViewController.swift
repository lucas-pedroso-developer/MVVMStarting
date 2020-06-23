//
//  StudentListViewController.swift
//  MVVMUsingSwift
//
//  Created by Lucas Daniel on 23/06/20.
//  Copyright © 2020 Lucas. All rights reserved.
//

import UIKit

class StudentListViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let studentViewModel = StudentListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSetup()
        studentViewModel.reloadStudentList = { [weak self] () in
            self?.tableView.reloadData()
        }
        
    }
    
    @IBAction func buttonHandlerAddData(_ sender: Any) {
        if (textFieldName.text?.count ?? 0 > 0) && (textFieldAddress.text?.count ?? 0 > 0)
        {
            studentViewModel.addStudentData(name: textFieldName.text, address: textFieldAddress.text)
            textFieldName.text = ""
            textFieldAddress.text = ""
            self.view.endEditing(true)
        } else {
            
        }
        
    }
    
  

}

extension StudentListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableViewSetup() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel.arrayOfStudent?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellStudentList = tableView.dequeueReusableCell(withIdentifier: String(describing: CellStudentList.self)) as! CellStudentList
        
        cell.studentObj = studentViewModel.arrayOfStudent?[indexPath.row]
        
        return cell
    }
    
    
    
}
