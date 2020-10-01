//
//  ViewController.swift
//  fluent-poc2
//
//  Created by alex on 9/27/20.
//

import UIKit
import MLKit
import Foundation

class ViewController: UIViewController {
    
    // UI Outlets
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var outputLanguagePickerView: UIPickerView!
    
    @IBAction func onTranslateButtonTapped(_ sender: UIButton) {
    }
    
    let conditions = ModelDownloadConditions(
        allowsCellularAccess: false,
        allowsBackgroundDownloading: true
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let options = TranslatorOptions(sourceLanguage: .english, targetLanguage: .spanish)
        let translator = Translator.translator(options: options)
        
        translator.downloadModelIfNeeded(with: conditions) { [weak self] error in
            guard error == nil, let self = self else {
                print(error ?? "Error downloading!")
                return
            }
            
            self.translateText(translator: translator)
        }
    }

    func translateText(translator: Translator) {
        translator.translate("how are you?") { translatedText, error in
            guard error == nil, let translatedText = translatedText else { return }

            print(translatedText)
        }
    }
}

