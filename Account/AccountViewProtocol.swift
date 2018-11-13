//
//  AccountViewProtocol.swift
//  Account
//
//  Created by Ali @ Orthogonal on 11/12/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import Foundation

protocol AccountViewProtocol {
    
    func getWithdrawalValue() -> String
    
    func getDepositValue() -> String
    
    func setBalanceValue( balanceAmount :String )
    
}
