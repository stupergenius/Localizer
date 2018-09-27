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
  @IBOutlet weak var button: NSButton!
  @IBOutlet weak var textView: NSTextView!
  @IBOutlet weak var languageSelector: NSPopUpButton!
  @IBOutlet weak var quitButton: NSButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    quitButton.title = "App.Quit".localize()
    languageSelector.removeAllItems()
    for language in Localizer.availableLanguages() {
      languageSelector.addItem(withTitle: language)
    }
    languageSelector.action = #selector(didSelectLanguage(_:))
    
    button.action = #selector(switchLanguage)
    textView.textStorage?.append(NSAttributedString(string: "\"Example\".localize(): " + "Example".localize()))
    textView.insertNewline(nil)
    
    Localizer.registerBundleTablePair(bundle: Bundle(for: type(of: self)), table: nil)
    textView.textStorage?.append(NSAttributedString(string: "\"Example\".localize(): " + "Example".localize()))
    textView.insertNewline(nil)
    
    Localizer.registerBundleTablePair(bundle: Bundle(for: type(of: self)), table: "Test")
    textView.textStorage?.append(NSAttributedString(string: "\"Example\".localize(): " + "Example".localize()))
    
    textLabel.stringValue = "Clock.Alarm".localize() + " :: " + "Example".localize()
    
    NotificationCenter.default.addObserver(self, selector: #selector(reloadStrings),
                                           name: NSNotification.Name(rawValue: Localizer.didSwitchLanguageNotificationKey), object: nil)
  }
  
  @objc func didSelectLanguage(_ sender: NSPopUpButton) {
    let lang = sender.item(at: sender.indexOfSelectedItem)!.title
    Localizer.setLanguage(languageId: lang)
  }
  
  @objc func reloadStrings() {
    textLabel.stringValue = "Clock.Alarm".localize() + " :: " + "Example".localize()
    quitButton.title = "App.Quit".localize()
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }
  
  @objc func switchLanguage() {
    Localizer.setLanguage(languageId: "fr")
  }
}

