//
//  Student.swift
//  MVVMUsingSwift
//
//  Created by Lucas Daniel on 23/06/20.
//  Copyright © 2020 Lucas. All rights reserved.
//

import Foundation

class Student {
    var name: String?
    var address: String?
    
    init() {
    }
    
    init(name: String?, address: String?) {
        self.name = name
        self.address = address
    }
}
