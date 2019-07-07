//
//  ViewController.swift
//  XcodeAsm
//
//  Created by Peter Olsen on 7/4/19.
//  Copyright © 2019 Peter Olsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var b: UITextField!
    @IBOutlet weak var andOut: UILabel!
    @IBOutlet weak var orOut: UILabel!
    @IBOutlet weak var eorOut: UILabel!
    @IBOutlet weak var getByteOut: UILabel!
    @IBOutlet weak var getDoubleWordOut: UILabel!
    
    @IBAction func execute(_ sender: Any) {
        if a.text!.hasPrefix("0x") { a.text = String(a.text!.dropFirst(2))}
        if b.text!.hasPrefix("0x") { b.text = String(b.text!.dropFirst(2))}
        let aValue = Int(a.text!, radix: 16) ?? 0
        let bValue = Int(b.text!, radix: 16) ?? 0
        a.text = String(format: "0x%08X", aValue)
        b.text = String(format: "0x%08X", bValue)
        andOut.text = String(format: "0x%08X", and(aValue, bValue))
        orOut.text = String(format: "0x%08X", or(aValue, bValue))
        eorOut.text = String(format: "0x%08X", eor(aValue, bValue))
        getByteOut.text = String(format: "0x%08X", getByte(aValue))
        getDoubleWordOut.text = String(format: "0x%08X", getDoubleWord(aValue))
        a.resignFirstResponder()
        b.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

