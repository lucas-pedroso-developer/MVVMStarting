//
//  StudentListViewModel.swift
//  MVVMUsingSwift
//
//  Created by Lucas Daniel on 23/06/20.
//  Copyright © 2020 Lucas. All rights reserved.
//

import Foundation

class StudentListViewModel {
    
    var reloadStudentList = {() -> () in }
    var arrayOfStudent: [Student]? = [] {
        didSet{
            reloadStudentList()
        }
    }
    
    func addStudentData(name: String?, address: String?) {
        arrayOfStudent?.append(Student(name: name, address: address))
    }
    
}
