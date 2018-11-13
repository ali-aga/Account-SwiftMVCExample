//
//  AccountTests.swift
//  AccountTests
//
//  Created by Ali @ Orthogonal on 11/8/18.
//  Copyright © 2018 Orthogonal. All rights reserved.
//

import XCTest
@testable import Account

class AccountModelTest: XCTestCase {
    
    var model: AccountModel?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        model = AccountModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTransact() {
        let result = model?.transact(deposit: 10, withdraw: 4)
        XCTAssertEqual(6, result)        
    }

}
