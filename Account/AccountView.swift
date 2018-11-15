//
//  AccountView.swift
//  Account
//
//  Created by Ali @ Orthogonal on 11/15/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import Foundation
import UIKit

class AccountView: UIView,
                   AccountViewProtocol{
    
    @IBOutlet weak var accountView: UIView!
    @IBOutlet weak var balanceValueView: UILabel!
    @IBOutlet weak var withdrawalValueField: UITextField!
    @IBOutlet weak var depositValueField: UITextField!
    
    var controller: ViewController?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        commonInit()
    }
    
    func commonInit(){
        Bundle.main.loadNibNamed("AccountView", owner: self, options:  nil)
        addSubview(accountView)
        
    }
    
    func getWithdrawalValue() -> String {
        return withdrawalValueField.text ?? ""
    }
    
    func getDepositValue() -> String {
        return depositValueField.text ?? ""
    }
    
    func setBalanceValue(balanceAmount: String) {
        balanceValueView.text = balanceAmount
    }
    
    func setController(controller:ViewController){
        self.controller = controller
    }
    
    @IBAction func submitClicked(_ sender: Any) {
        self.controller?.processTransactionRequest()
    }
}
