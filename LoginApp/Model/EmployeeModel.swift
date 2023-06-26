//
//  EmployeeModel.swift
//  LoginApp
//
//  Created by Apple on 24/06/23.
//

import Foundation
import UIKit
struct Employee : Decodable{
    let status: String
    let data: [EmployeeModel]
}

struct EmployeeModel : Decodable
{
    let id,employeeName,employeeSalary, employeeAge, employeeProfileImage : String
    enum codingKeys : String, CodingKey{
                case id
                case employeeName = "employee_name"
                case employeeSalary = "employee_salary"
                case employeeAge = "employee_age"
                case profileImage = "profile_image"
    }
}
