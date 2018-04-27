//
//  ViewControllerTwo.swift
//  Seven
//
//  Created by CM Student on 4/23/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerTwo: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    let regionRadius: CLLocationDistance = 1000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Map"
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        let restaurantTwo = RestaurantTwo(title: "En Fuego", type: "Local Hawaiian", coordinate: CLLocationCoordinate2D(latitude: 21.337831, longitude: -158.080440))
        mapView.addAnnotation(restaurantTwo)
        let restaurantThree = RestaurantThree(title: "Sushi Bay", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.339798, longitude: -158.078218))
        mapView.addAnnotation(restaurantThree)
        let restaurantFour = RestaurantFour(title: "Koa Pancake House", type: "Local Hawaiian", coordinate: CLLocationCoordinate2D(latitude: 21.338076, longitude: -158.080730))
        mapView.addAnnotation(restaurantFour)
        let restaurantFive = RestaurantFive(title: "Julie'z", type: "Local Hawaiian", coordinate: CLLocationCoordinate2D(latitude: 21.337695, longitude: -158.080419))
        mapView.addAnnotation(restaurantFive)
        let restaurantSix = RestaurantSix(title: "Chili's", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.340204, longitude: -158.076493))
        mapView.addAnnotation(restaurantSix)
        
        
    }

    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
