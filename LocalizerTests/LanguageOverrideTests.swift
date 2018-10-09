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
    Localizer.registerBundleTablePair(bundle: Localizer.localizerBundle)
    Localizer.setLanguage(languageId: "fr")
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testIsUsingFrenchForLocalizerStrings() {
    print(Localizer.availableLanguages())
    print(Localizer.getIdHierarchyOfBundles())
    XCTAssert("General.Cancel".localize() == "Annuler", "String was " + "General.Cancel".localize())
  }
}
