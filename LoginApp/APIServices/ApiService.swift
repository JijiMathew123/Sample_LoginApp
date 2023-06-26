//
//  ApiService.swift
//  LoginApp
//
//  Created by Apple on 24/06/23.
//

import Foundation
class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData(completion : @escaping (Employee) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(Employee.self, from: data)
                    completion(empData)
            }
        }.resume()
    }
}
