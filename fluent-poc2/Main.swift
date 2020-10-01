//
//  Main.swift
//  fluent-poc2
//
//  Created by alex on 9/27/20.
//
//
//import Foundation
//import MLKit
//
//let options = TranslatorOptions(sourceLanguage: .english, targetLanguage: .german)
//let englishGermanTranslator = Translator.translator(options: options)
//
//
//let conditions = ModelDownloadConditions(
//    allowsCellularAccess: false,
//    allowsBackgroundDownloading: true
//)
//
//englishGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
//    guard error == nil else { return }
//  print("downloaded model:")
//}
//
//
//englishGermanTranslator.translate("Your text here!") { translatedText, error in
//    guard error == nil, let translatedText = translatedText else { return }
//
//    print(translatedText)

//extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return TranslateLanguage.allLanguages().count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return TranslateLanguage.allLanguages()[row]
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//
//    }
//}
