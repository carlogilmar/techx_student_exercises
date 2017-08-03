//
//  ViewController.swift
//  VacationMaps
//
//  Created by Brian Voong on 8/3/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit
import MapKit

struct VacationLocation {
    let name: String
    let latitude: Double
    let longitude: Double
}

class ViewController: UIViewController {

    @IBAction func handleNext(_ sender: UIBarButtonItem) {
        print("Handling tapping next...")
        //currentIndex + 1 is next location index
        let nextLocation = vacationLocations[currentIndex + 1]
        currentIndex += 1 //increase current index by 1
        
        // set the region for the next location
        let locationCoordinate = CLLocationCoordinate2D(latitude: nextLocation.latitude, longitude: nextLocation.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let region = MKCoordinateRegion(center: locationCoordinate, span: span)
        mapView.setRegion(region, animated: true)
        
//        currentLocation = nextLocation
    }
    var currentIndex = 0
    var vacationLocations = [VacationLocation]() // [Type]() creates a new empty array so that we can append things
    
//    var currentLocation: VacationLocation?
    
    
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hawaii = VacationLocation(name: "Hawaii", latitude: 21.3149, longitude: -157.8591)
        
        let tokyo = VacationLocation(name: "Tokyo", latitude: 35.71, longitude: 139.730978)
        
        let beijing = VacationLocation(name: "Beijing", latitude: 39.899, longitude: 116.396)
        
        vacationLocations.append(hawaii)
        vacationLocations.append(tokyo)
        vacationLocations.append(beijing)
        
        for vl in vacationLocations {
            print(vl.name)
            // creating and adding annotation for each VacationLocation in this loop
            let annotation = MKPointAnnotation()
            annotation.title = vl.name
            annotation.coordinate = CLLocationCoordinate2D(latitude: vl.latitude, longitude: vl.longitude)
            mapView.addAnnotation(annotation)
        }
        
        //keep track of where I'm currently at right now
//        currentLocation = hawaii
        
        //lets put some pins on the map
        let annotation = MKPointAnnotation()
        annotation.title = "Hawaii"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 21.3149, longitude: -157.8591)
        mapView.addAnnotation(annotation)
        
        let tokyoAnnotation = MKPointAnnotation()
        tokyoAnnotation.title = "Tokyo"
        tokyoAnnotation.coordinate = CLLocationCoordinate2D(latitude: 21.3149, longitude: -157.8591)
        mapView.addAnnotation(tokyoAnnotation)
        
        //region for honolulu as default view
        let locationCoordinate = CLLocationCoordinate2D(latitude: 21.3149, longitude: -157.8591)
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let region = MKCoordinateRegion(center: locationCoordinate, span: span)
        mapView.setRegion(region, animated: true)
    }


}

