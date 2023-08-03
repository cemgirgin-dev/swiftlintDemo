//
//  ViewController.swift
//  swiftlintDemo
//
//  Created by Cem Girgin on 3.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var name = "Cem"
        print("This line of print is not allowed because of a custom rule \(name)")
        // Do any additional setup after loading the view.
    }
    //Warning case 1- -> Violation at least one space after slashes
    // Correct Usage
    func test1(x1:Int) {
        
    }
    func test2(parameter2 : Int){
        // No whitespace --> correct usage
    }
    // Below function creates a warning -> Colon Spacing Violation: Colons should be next to the identifier when specifying a type and next to the key in dictionary literals
    // Opening Brace Spacing Violation: Opening braces should be preceded by a single space and on the same line as the declaration
    func test3(parameter3 : Int)
    {
        // No whitespace allowed
    }
    // Whitespace below creates warning there should be no whitespace
    
}
// Warning -> Trailing Newline Violation: Files should have a single trailing newline (trailing_newline)
