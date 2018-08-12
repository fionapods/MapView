//
//  ViewController.swift
//  MapView
//
//  Created by Fiona Podrima on 8/12/18.
//  Copyright © 2018 Cacttus Education. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        
        
        let distanceSpan: CLLocationDegrees = 500
        let homeLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.62706419789814, 21.145773267353434)
        let artiHomeLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.62645316083601, 21.14352364927538)
        let butiHomeLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.62568095327578, 21.144618357343575)
        let storeLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.62659791628264, 21.146246194839478)
        let dafiHomeLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.627588438402896, 21.147118642026044)
        
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(homeLocation, distanceSpan, distanceSpan), animated: true)
        
        let pRHomePin = PrishtinaAnnotation(title: "My Home", subtitle: "Best home ever!!!!", coordinate: homeLocation)
        let artiHomePin = PrishtinaAnnotation(title: "Arti's Home", subtitle: "subtitle", coordinate: artiHomeLocation)
        let butiHomePin = PrishtinaAnnotation(title: "Buti's Home", subtitle: "subtitle", coordinate: butiHomeLocation)
        let storePin = PrishtinaAnnotation(title: "Meridian", subtitle: "subtitle", coordinate: storeLocation)
        let dafiHomePin = PrishtinaAnnotation(title: "Cafi's Home", subtitle: "subtitle", coordinate: dafiHomeLocation)
        
        mapView.addAnnotation(pRHomePin)
        mapView.addAnnotation(artiHomePin)
        mapView.addAnnotation(butiHomePin)
        mapView.addAnnotation(storePin)
        mapView.addAnnotation(dafiHomePin)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

