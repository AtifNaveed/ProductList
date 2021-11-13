//
//  DbzlMVVMTests.swift
//  DbzlMVVMTests
//
//  Created by Atif on 12/11/2021.
//

import XCTest

@testable import DbzlMVVM

class DbzlMVVMTests: XCTestCase {
    var service = Service()
    
    func testApiResponse() throws {
        try XCTSkipUnless(Reachability.isConnectedToNetwork(), "~~ Internet Disconnected ~~")
        
        // ~~ Test data ~~
        var list: [Item]?
        var responseError: Error?
        let expectation = expectation(description: "Download data from api.")
        
        service.requestFetchData(completion: { (items, failed) in
            if items?.results.count == 0 {
                let error = NSError(domain: "Failed", code: 500, userInfo: [NSLocalizedDescriptionKey: "Invalid request"])
                responseError = error
            } else {
                debugPrint("Unit test completed.")
                list = items?.results
            }
            expectation.fulfill()
        })
    
        waitForExpectations(timeout: 10.0, handler: nil)
        XCTAssertNil(responseError)
        XCTAssertNotNil(list, "No data was downloaded.")
        //XCTAssertEqual(statusCode, exptedStatus)
    }
}
