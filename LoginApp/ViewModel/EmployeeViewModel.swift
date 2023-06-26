//
//  EmployeeViewModel.swift
//  LoginApp
//
//  Created by Apple on 24/06/23.
//

import Foundation

class EmployeesViewModel : NSObject{
    private var apiService : APIService!
    private(set) var empData : Employee! {
            didSet {
                self.bindEmployeeViewModelToController()
            }
        }
        
        var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init(){
        super.init()
        self.apiService = APIService()
        getDataFromService()
    }
    func getDataFromService(){
        self.apiService.apiToGetEmployeeData{ (empdata) in
            print("empdata")
        }
    }
}
