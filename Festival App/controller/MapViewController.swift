//
//  MapViewController.swift
//  Festival App
//
//  Created by mobapp06 on 07/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit
import MapKit

final class PodiumAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }
    
    var region: MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        return MKCoordinateRegion(center: coordinate, span: span)
        
    }
}

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        let nieuwcoordinate = CLLocationCoordinate2D(latitude:51.1242936, longitude: 2.7480158 )
        let nieuwAnnotation = PodiumAnnotation(coordinate: nieuwcoordinate, title: "Nieuwpoort", subtitle: "City of Nieuwpoort")
        mapView.addAnnotation(nieuwAnnotation)
        mapView.setRegion(nieuwAnnotation.region, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let PodiumAnnotation = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {PodiumAnnotation.animatesWhenAdded = true
            PodiumAnnotation.titleVisibility = .adaptive
            PodiumAnnotation.titleVisibility = .adaptive
            
            return PodiumAnnotation
        }
        
        return nil
    }
}
