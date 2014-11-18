//
//  ViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier! == "tableSegue")
        {
            println("tablesegue")
            let tableViewController : TipsTableViewController = segue.destinationViewController as TipsTableViewController
            let tipArray = TipsGeneratorArray()
            tipArray.generateSampleSet()
            tableViewController.tipsArray = tipArray
        }
        else
        {
            let collectionController = segue.destinationViewController as TipsCollectionViewController
            let tipArray = TipsGeneratorArray()
            tipArray.generateSampleSet()
            collectionController.tipsArray = tipArray
        }
    }


}

