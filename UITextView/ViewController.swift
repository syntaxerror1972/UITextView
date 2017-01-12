//
//  ViewController.swift
//  UITextView
//
//  Created by Shrawan Shinde on 13/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var roundedButton = UIButton()
     var textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))
        self.automaticallyAdjustsScrollViewInsets = false
        
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.lightGray
        self.view.addSubview(textView)
        
        //simple UIButton  with rounded corner in swift 3.0
        roundedButton.setTitle("Click", for: .normal)
        roundedButton.backgroundColor = .clear
        roundedButton.layer.cornerRadius = 5
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor.black.cgColor
        roundedButton.setTitleColor(UIColor.black, for: .normal)
        roundedButton.frame = CGRect(x: 150, y: 400, width: 100, height: 50)
        roundedButton.addTarget(self, action: #selector(self.roundedButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(roundedButton)
    }
    
    
    
    func roundedButtonTapped(sender : UIButton) {
        //Write button action here
        
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = textView.text;
        alertView.show();

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

