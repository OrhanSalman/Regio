//
//  TestView.swift
//  Regio
//
//  Created by Orhan Salman on 25.03.23.
//
/*
import SwiftUI

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 50.874886, longitude: 8.025132)

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.delegate = context.coordinator
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let camera = MKMapCamera()
        camera.centerCoordinate = self.coordinate
        camera.pitch = 45
        camera.altitude = 200
        camera.heading = 45
    
        view.camera = camera

        view.pointOfInterestFilter = .excludingAll
        view.showsBuildings = true
        view.isUserInteractionEnabled = true
        
        view.userTrackingMode = .followWithHeading
        view.mapType = .standard
        
        // Add example annotations
        let annotation1 = MKPointAnnotation()
        annotation1.title = "San Francisco"
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)

        let annotation2 = MKPointAnnotation()
        annotation2.title = "New York City"
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)

        let annotation3 = MKPointAnnotation()
        annotation3.title = "London"
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 51.5072, longitude: -0.1276)
        
        view.addAnnotations([annotation1, annotation2, annotation3])
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            // Show sheet for the selected annotation
            guard let annotation = view.annotation else { return }
            
            let sheet = UIActionSheet(title: annotation.title ?? "", delegate: nil, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Option 1", "Option 2")
            sheet.show(in: mapView)
        }
    }
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
*/
