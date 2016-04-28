//
//  ViewController.swift
//  openLibrary
//
//  Created by Alx on 14/04/16.
//  Copyright © 2016 Alx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txISBN: UITextField!
    
    @IBOutlet weak var tvResult: UITextView!
    
    @IBAction func btSearch(sender: UIButton) {
        let myURLs = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:" + txISBN.text!
        let realURL = NSURL(string: myURLs)
        let myData:NSData? = NSData(contentsOfURL: realURL!)
        let myResult = NSString(data:myData!, encoding:NSUTF8StringEncoding)
        tvResult.text = myResult! as String
    }
    
    @IBAction func btClear(sender: UIButton) {
        txISBN.text?.removeAll()
        tvResult.text.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

