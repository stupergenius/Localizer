//
//  Localizer.swift
//  Localizer
//
//  Created by Nicolas Degen on 24.06.18.
//  Copyright © 2018 Nicolas Degen. All rights reserved.
//

import Foundation

public class Localizer {
  static let localizerBundle = Bundle(identifier: "com.nide.localizer")!
  public static let mainBundle = Bundle.main
  
  static let currentLanguageKey = "LocalizerCurrentLanguage"
  static let defaultLanguageKey = "de"
  static let changedLanguageNotificationKey = "LocalizerLanguageChange"
  
  static var bundleTableHierarchy: [(bundle: Bundle, table: String?)] = [(localizerBundle, nil)]
  
  public class func registerBundleTablePair(bundle: Bundle, table: String!) {
    bundleTableHierarchy.append((bundle: bundle, table: table))
  }
  
  class func localize(key: String) -> String {
    for bundleTablePair in bundleTableHierarchy {
       let localizedString = bundleTablePair.bundle.localizedString(forKey: key, value: nil, table: bundleTablePair.table)
       if localizedString != key {
        return localizedString
      }
    }
    return key
  }
}
