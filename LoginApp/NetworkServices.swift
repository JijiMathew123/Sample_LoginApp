//
//  NetworkServices.swift
//  LoginApp
//
//  Created by Apple on 21/06/23.
//

import Foundation
class NetworkService{
    static let shared = NetworkService()
    private init(){
    }
    var userData : User?
    
    func login(username:String,password:String,completion: @escaping (Bool) -> Void){
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async { [self] in
                if username == "jijijohn" && password == "password"{
                    userData = User(name: username, password: password)
                    completion(true)
                }
                else{
                    completion(false)
                }
            }
        }
    }
    func getloggedInUser() -> User
    {
        return userData!
    }
}
