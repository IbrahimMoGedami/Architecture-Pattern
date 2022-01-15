//
//  UsersCell.swift
//  usersMVVMDemo
//
//  Created by Ibrahim Mo Gedami on 28/01/2021.
//

import UIKit

class UsersCell: UITableViewCell {

    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    
    var employee : EmployeeModel? {
        didSet {
            employeeIdLabel.text = employee?.email
            employeeNameLabel.text = employee?.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
