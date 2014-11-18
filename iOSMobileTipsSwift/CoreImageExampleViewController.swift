//
//  CoreImageExampleViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit

class CoreImageExampleViewController: UIViewController
{

    @IBOutlet weak var photoImageView: UIImageView!
    
    let context = CIContext(options: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func applyFilter(sender: AnyObject)
    {
        let inputImage = CIImage(image: photoImageView.image)
        let randomColor = [kCIInputAngleKey: (Double(arc4random_uniform(314))/100)];
        let filteredImage = inputImage.imageByApplyingFilter("CIHueAdjust", withInputParameters: randomColor);
        let renderedImage = context.createCGImage(filteredImage, fromRect: filteredImage.extent());
        photoImageView.image = UIImage(CGImage: renderedImage);
        
        
    }

}
