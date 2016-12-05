//
//  AuthService.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-12-03.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import Foundation
import UIKit
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

struct AuthService {
    
    var dataBaseRef: FIRDatabaseReference! {
        return FIRDatabase.database().reference()
    }
    
    var storageRef: FIRStorageReference! {
        return FIRStorage.storage().reference()
    }
    
    // 1. Creating the SignUp Function
    
    func SignUp (userName: String, email: String, firstName: String, lastName: String, dob: String, password: String ) {
        
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
            if error == nil {
                self.setUserInfo(user: user, username: userName, firstName: firstName, lastName: lastName, dob: dob, password: password )
            } else {
                print(error!.localizedDescription)
            }
        })
    }
    
    // 2. Assign to the new user a username
    private func setUserInfo(user: FIRUser!, username: String, firstName: String, lastName: String, dob: String, password: String) {
        
        let changeRequest = user.profileChangeRequest()
        changeRequest.displayName = username
        
        changeRequest.commitChanges { (error) in
            if error == nil {
                
                self.saveUserInfo(user: user, username: username, firstName: firstName, lastName: lastName, dob: dob, password: password)
                
            } else {
                print(error!)
            }
        }
    }
    
    // 3. Save the user Info to Firebase Database
    private func saveUserInfo(user: FIRUser!, username: String, firstName: String, lastName: String, dob: String, password: String) {
        
        let userInfo = ["email": user.email!, "username": username, "firstName": firstName, "lastName": lastName, "dob": dob, "uid": user.uid]
        
        let userRef = dataBaseRef.child("users").child(user.uid)
        
        userRef.setValue(userInfo) { (error, ref) in
            if error == nil {
                print("User info saved succesfully")
                // Log in user
                self.logIn(email: user.email!, password: password)
            } else {
                print(error?.localizedDescription as Any)
            }
        }
        
    }
    
    // 4. LogIn user Func
    func logIn(email: String, password: String) {
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            if error == nil {
                if let user = user {
                    print("\(user.displayName!) has logged in succesfully")
                    
                    let appDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDel.logUser()
                }
            } else {
                print(error?.localizedDescription as Any)
            }
        })
    }
    
    
}




