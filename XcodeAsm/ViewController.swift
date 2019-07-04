//
//  ViewController.swift
//  XcodeAsm
//
//  Created by Peter Olsen on 7/4/19.
//  Copyright © 2019 Peter Olsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.text = "The result is \(do_it(0xAA, 0x33))"
    }

}

