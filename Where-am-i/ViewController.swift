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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

