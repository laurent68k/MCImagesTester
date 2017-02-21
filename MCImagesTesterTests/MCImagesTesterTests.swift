//
//  MCImagesTesterTests.swift
//  MCImagesTesterTests
//
//  Created by Laurent on 20/02/2017.
//  Copyright © 2017 Laurent68k. All rights reserved.
//

import XCTest
@testable import MCImagesTester

class MCImagesTesterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testImagesDayExist() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        for imageName in ImagesManager.listDay {
        
            XCTAssert(!imageName.isEmpty, "Test error as listDay contents an empty imafe filename")

            if !imageName.isEmpty {
                
                let image = UIImage( named: imageName )
                
                XCTAssert(image != nil, "Test error as image: '\(imageName)' doesn't exists")
            }
        }
     }
    
    func testImagesNightExist() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        for imageName in ImagesManager.listNight {
            
            XCTAssert(!imageName.isEmpty, "Test error as listNight contents an empty imafe filename")
            
            if !imageName.isEmpty {
                
                let image = UIImage( named: imageName )
                
                XCTAssert(image != nil, "Test error as image: '\(imageName)' doesn't exists")
            }
        }
    }
    
}
