//
//  String+Localize.swift
//  Localizer
//
//  Created by Nicolas Degen on 24.06.18.
//  Copyright © 2018 Nicolas Degen. All rights reserved.
//

import Foundation

extension String {
  public func localize() -> String {
    return Localizer.localize(key: self)
  }
}
