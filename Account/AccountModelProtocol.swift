//
//  AccountModelProtocol.swift
//  Account
//
//  Created by Ali @ Orthogonal on 11/8/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import Foundation

protocol AccountModelProtocol {
    
//  function will deposit or withdraw an amount and will
//  return the balance
    func transact(deposit : NSNumber , withdraw :NSNumber) -> NSNumber
    
}
