//
//  ViewController.swift
//  Example-macOS
//
//  Created by Nicolas Degen on 29.06.18.
//  Copyright © 2018 Nicolas Degen. All rights reserved.
//

import Cocoa

import Localizer

class ViewController: NSViewController {

  @IBOutlet weak var textLabel: NSTextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    Localizer.registerBundleTablePair(bundle: Bundle(for: type(of: self)), table: "Test")
    Localizer.registerBundleTablePair(bundle: Bundle(for: type(of: self)), table: nil)

    Localizer.setLanguage(languageId: "de")
    textLabel.stringValue = "Clock.Alarm".localize() + " :: " + "Example".localize()
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

