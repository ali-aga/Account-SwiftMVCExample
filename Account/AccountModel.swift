//
//  AccountModel.swift
//  Account
//
//  Created by Ali @ Orthogonal on 11/12/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import Foundation

class AccountModel:AccountModelProtocol {
    
    var balance:Double = 0
    
    func transact(deposit: Double, withdraw: Double) -> Double {
        balance += deposit
        balance -= withdraw
        return balance
    }
    
}
