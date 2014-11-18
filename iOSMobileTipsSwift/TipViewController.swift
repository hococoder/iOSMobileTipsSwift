//
//  TipViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    var tipTitleText : NSString!
    var tipDescriptionText : NSString!
    var tipCodeSegmentText : NSString!
    var tipStoryboardName : NSString!
    
    @IBOutlet weak var tipTitle: UILabel!
    @IBOutlet weak var tipDescription: UITextView!
    @IBOutlet weak var tipCodeSegment: UITextView!

    @IBOutlet weak var showExampleButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        tipTitle.text = tipTitleText
        tipDescription.text = tipDescriptionText
        tipCodeSegment.text = tipCodeSegmentText
        
        if (tipStoryboardName .isEqualToString(""))
        {
            showExampleButton.hidden = true;
        }
    }

    @IBAction func showExample(sender: AnyObject)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let exampleViewController = storyboard.instantiateViewControllerWithIdentifier(tipStoryboardName) as UIViewController
        
        self.navigationController?.pushViewController(exampleViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
