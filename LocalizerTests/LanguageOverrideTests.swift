//
//  LanguageOverrideTests.swift
//  LocalizerTests
//
//  Created by Nicolas Degen on 28.08.18.
//  Copyright © 2018 Nicolas Degen. All rights reserved.
//

import XCTest

import Localizer

class LanguageOverrideTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    Localizer.setLanguage(languageId: "fr")
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testIsUsingFrenchForLocalizerStrings() {
    XCTAssert("General.Cancel".localize() == "Annuler", "String was " + "General.Cancel".localize())
    print(234)
  }
  
//  func testPerformanceExample() {
//    // This is an example of a performance test case.
//    self.measure {
//      // Put the code you want to measure the time of here.
//    }
//  }
}
