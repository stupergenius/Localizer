//
//  BundleTableHierarchyTests.swift
//  LocalizerTests
//
//  Created by Nicolas Degen on 28.08.18.
//  Copyright © 2018 Nicolas Degen. All rights reserved.
//

import XCTest

import Localizer

class BundleTableHierarchyTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    Localizer.clearRegisteredBundles()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testBundleAddiditons() {
    XCTAssert("Test.Language".localize() == "Test.Language", "Test.Language expected but got: " + "Test.Language".localize())
    Localizer.registerBundleTablePair(bundle: Bundle(for: type(of: self)), table: nil)
    XCTAssert("Test.Language".localize() == "English", "\"English\" expected but got: " + "Test.Language".localize())
    Localizer.registerBundleTablePair(bundle: Bundle(for: type(of: self)), table: "Additional")
    XCTAssert("Test.Language".localize() == "English 2", "\"English 2\" expected but got: " + "Test.Language".localize())
  }
  
//  func testPerformanceExample() {
//    // This is an example of a performance test case.
//    self.measure {
//      // Put the code you want to measure the time of here.
//    }
//  }
}
