//
//  LoginRepository.swift
//  MVVM-C
//
//  Created by Asep Abdul Azis on 02/11/20.
//

import Foundation

class LoginRepository {
    class func login(credential: LoginModel, complition: @escaping ((GenericState<Session>) -> ())) {
        if credential.username == "admin" && credential.password == "password" {
            DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                complition(.success(Session(apiKey: "LKJDFL-91DSFL-JLDK9-JLJS", session: "LDJSHF-JLSOL0-JLI100-JLODSF-SLO07")))
            }
        }
    }
}
