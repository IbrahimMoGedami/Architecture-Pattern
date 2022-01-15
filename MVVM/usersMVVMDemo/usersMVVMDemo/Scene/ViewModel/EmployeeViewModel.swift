//
//  EmployeeViewModel.swift
//  usersMVVMDemo
//
//  Created by Ibrahim Mo Gedami on 28/01/2021.
//

import Foundation

class EmployeeViewModel : NSObject {
    
    private var apiService : UsersIntecator!
    private(set) var empData : EmployeeModel! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService =  UsersIntecator()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        apiService.getApi { (response, responseError, error) in
            if let error = error{
                print(error.localizedDescription)
            }else if let responseError = responseError{
                print(responseError.error()!)
            }else{
                self.empData = response
            }
        }
    }
}
