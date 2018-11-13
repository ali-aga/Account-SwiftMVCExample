//
//  ViewController.swift
//  Account
//
//  Created by Ali @ Orthogonal on 11/8/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var accountView: AccountViewProtocol?
    var accountModel: AccountModelProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view,
        // typically from a nib.
        if let aView = self.view as? AccountViewProtocol{
            if (accountView == nil) {
                setAccountView(aView)
            }
        }
//      If model is not injected, inject a default one here
        if accountModel == nil {
            setAccountModel(AccountModel())
        }
    }
    

// Use this method to inject the view dependency if we need to.
// Method can be for testing mock view.
    func setAccountView(_ aView  :AccountViewProtocol){
        accountView = aView
    }
    
    
//  Use this method to inject the model dependency
    func setAccountModel(_ aModel: AccountModelProtocol){
        accountModel = aModel
    }

    
    func processTransactionRequest(){
        let depositString = accountView?.getDepositValue()
        let withdrawalString = accountView?.getWithdrawalValue()
        
        let deposit = getValue(depositString)
        let withdrawal = getValue(withdrawalString)
        let balance  = accountModel?.transact(deposit: deposit, withdraw: withdrawal)
        accountView?.setBalanceValue(balanceAmount: String(format:"$%.02f", balance ?? 0))
    }
    
    
    func getValue(_ text: String?)->Double{
        if let text = text{
            return Double(text) ?? 0
        }
        return 0
    }
    
}

