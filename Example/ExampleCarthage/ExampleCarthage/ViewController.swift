//
//  ViewController.swift
//  ExampleCarthage
//
//  Created by kojirof on 2018/12/07.
//  Copyright © 2018 Gumob. All rights reserved.
//

import UIKit
import CallStackParser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print()
        print(Thread.simpleCallStackString)
        foo()
    }
    
    func foo() {
        print()
        print(Thread.simpleCallStackString)
        bar()
    }
    
    func bar() {
        print()
        print(Thread.simpleCallStackString)
    }

}
