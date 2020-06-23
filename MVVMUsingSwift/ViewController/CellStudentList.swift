//
//  CellStudentList.swift
//  MVVMUsingSwift
//
//  Created by Lucas Daniel on 23/06/20.
//  Copyright © 2020 Lucas. All rights reserved.
//

import UIKit

class CellStudentList: UITableViewCell {
    
    var studentObj: Student? {
        didSet {
            cellDataSet()
        }
    }

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    //@IBOutlet weak var labelName: UILabel!
    //@IBOutlet weak var labelAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func cellDataSet() {
        labelName.text = studentObj?.name
        labelAddress.text = studentObj?.address
    }

}
