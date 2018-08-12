//
//  PrishtinaAnnotation.swift
//  MapView
//
//  Created by Fiona Podrima on 8/12/18.
//  Copyright © 2018 Cacttus Education. All rights reserved.
//

import MapKit


class PrishtinaAnnotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        
    }
}

