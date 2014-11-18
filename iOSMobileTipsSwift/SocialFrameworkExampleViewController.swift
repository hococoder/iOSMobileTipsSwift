//
//  SocialFrameworkExampleViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit
import Social

class SocialFrameworkExampleViewController: UIViewController {

    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareInfo(sender: AnyObject)
    {
        let composeController = SLComposeViewController(forServiceType: SLServiceTypeFacebook);
        
        composeController.setInitialText("Just found this great website");
        composeController.addURL(NSURL(string: "http://www.ebookfrenzy.com"))
        
        self.presentViewController(composeController, animated: true, completion: nil)
    }

}
