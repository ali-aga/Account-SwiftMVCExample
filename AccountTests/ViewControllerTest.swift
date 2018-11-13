//
//  ViewControllerTest.swift
//  AccountTests
//
//  Created by Ali @ Orthogonal on 11/12/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import XCTest
@testable import Account

class ViewControllerTest: XCTestCase {
    
    let controller: ViewController = ViewController()
    let mockView: MockView = MockView()

    
    override func setUp(){
        controller.setAccountView(mockView)
        controller.setAccountModel(AccountModel())
    }
    
    override func tearDown() {
    }
    
    func testProcessTransactionRequest(){
        controller.processTransactionRequest()
        XCTAssertEqual("$1.00", mockView.balance)
    }
    
}

class MockView:AccountViewProtocol{
    
    var balance: String?
    
    func getWithdrawalValue() -> String {
        return "10"
    }
    
    func getDepositValue() -> String {
        return "11"
    }
    
    func setBalanceValue(balanceAmount: String) {
        balance = balanceAmount
    }
    
}

