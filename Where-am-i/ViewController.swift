//
//  ViewController.swift
//  Where-am-i
//
//  Created by admin on 31/03/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var latValue: UILabel!
    @IBOutlet weak var lonValue: UILabel!
    @IBOutlet weak var speedValue: UILabel!
    @IBOutlet weak var courseValue: UILabel!
    @IBOutlet weak var altValue: UILabel!
    @IBOutlet weak var addrValue: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let usrLocation = locations[0]
        let latitude = usrLocation.coordinate.latitude
        let longitude = usrLocation.coordinate.longitude
        let latDelta : CLLocationDegrees = 0.020
        let longDelta: CLLocationDegrees = 0.020
        let span = MKCoordinateSpanMake(latDelta,longDelta)
        let location = CLLocationCoordinate2DMake(latitude, longitude)
        let region = MKCoordinateRegionMake(location, span)
        mapView.setRegion(region,animated:true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

