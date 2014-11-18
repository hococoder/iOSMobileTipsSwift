//
//  MapKitFrameworkExampleViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapKitFrameworkExampleViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var zoomButton: UIButton!
    @IBOutlet weak var typeButton: UIButton!
    var locationManager : CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self;
        mapView.mapType = MKMapType.Standard
        mapView.showsUserLocation = true;
        
        locationManager = CLLocationManager()
        
        if (locationManager.respondsToSelector("requestWhenInUseAuthorization"))
        {
            locationManager.requestWhenInUseAuthorization()
        }
        
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!)
    {
        
    }

    func mapView(mapView: MKMapView!, didUpdateUserLocation userLocation: MKUserLocation!) {
        mapView.centerCoordinate = userLocation.location.coordinate
    }
    
    
    @IBAction func zoomIn(sender: AnyObject)
    {
        let userLocation = mapView.userLocation;
        println("user location is \(userLocation.location)")
        let region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 20000, 20000)
        mapView.setRegion(region, animated: false)
    }
    
    @IBAction func changeMapType(sender: AnyObject)
    {
        if (mapView.mapType == MKMapType.Standard)
        {
            mapView.mapType = MKMapType.Satellite
        }
        else
        {
            mapView.mapType = MKMapType.Standard;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
