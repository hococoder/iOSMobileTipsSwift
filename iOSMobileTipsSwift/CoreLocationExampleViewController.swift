//
//  CoreLocationExampleViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit
import CoreLocation

class CoreLocationExampleViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet weak var coordLat: UILabel!
    @IBOutlet weak var coordLon: UILabel!
    @IBOutlet weak var altitude: UILabel!
    @IBOutlet weak var hAccuracy: UILabel!
    @IBOutlet weak var vAccuracy: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var speed: UILabel!
    @IBOutlet weak var course: UILabel!
    
    var locationManager : CLLocationManager!
    var location : CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        location = CLLocation()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: CLLocationManagerDelegate
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        location = locations.last as CLLocation
        
        coordLat.text = NSString(format: "%f", location.coordinate.latitude)
        coordLon.text = NSString(format: "%f", location.coordinate.longitude)
        altitude.text = NSString(format: "%f", location.altitude)
        hAccuracy.text = NSString(format: "%f", location.horizontalAccuracy)
        vAccuracy.text = NSString(format: "%f", location.verticalAccuracy)
        timestamp.text = NSString(format: "%f", location.timestamp)
        speed.text = NSString(format: "%f", location.speed)
        course.text = NSString(format: "%f", location.course)
        
        
    }
}
