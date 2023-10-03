//
//  ViewController.swift
//  ExTextChecker
//
//  Created by 김종권 on 2023/10/03.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. sample
        let str = "mountein"
        let textChecker = UITextChecker()
//        let misspelledRange = textChecker.rangeOfMisspelledWord(
//            in: str,
//            range: NSRange(
//                0..<str.utf16.count
//            ),
//            startingAt: 0,
//            wrap: false,
//            language: "en_US"
//        )
//        
//        guard
//            misspelledRange.location != NSNotFound,
//            let guesses = textChecker.guesses(
//                forWordRange: misspelledRange,
//                in: str,
//                language: "en_US"
//            )
//        else {
//            print("Not found")
//            return
//        }
//        
//        print("guesss:", guesses) // ["mountain"]
//        
//        // 2. learn
//        UITextChecker.learnWord(str)
        
        // 3. 자동완성
        let partial = "mounta"
        let completions = textChecker
            .completions(
                forPartialWordRange: NSRange(
                    0..<partial.utf16.count
                ),
                in: partial,
                language: "en_US"
            )
        print(completions)
        /*
         Optional(["mountain", "mountains", "mountaineering", "mountaineer", "mountainside", "mountaintop", "mountainous", "mountain\'s", "mountainsides", "mountaintops", "mountable", "mountainboarding", "mountainside\'s", "mountainboarding\'s", "mountaintop\'s", "mountaineering\'s", "mountaineer\'s", "mountaineers"])
         */
    }
}
