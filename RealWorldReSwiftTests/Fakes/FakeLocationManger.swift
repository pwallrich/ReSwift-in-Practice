//
//  FakeLocationManager.swift
//  RealWorldReSwiftTests
//
//  Created by Tobias Ottenweller on 15.04.18.
//  Copyright © 2018 Tobias Ottenweller. All rights reserved.
//

import CoreLocation

@testable import RealWorldReSwift

class FakeLocationManager: LocationManager {

    var authorizationStatus: CLAuthorizationStatus = .notDetermined
    var location: CLLocation? = nil
    var delegate: CLLocationManagerDelegate?

    private(set) var requestWhenInUseAuthorizationCalled = false
    private(set) var startMonitoringSignificantLocationChangesCalled = false
    private(set) var requestLocationCalled = false

    func requestWhenInUseAuthorization() {
        requestWhenInUseAuthorizationCalled = true
    }

    func startMonitoringSignificantLocationChanges() {
        startMonitoringSignificantLocationChangesCalled = true
    }

    func requestLocation() {
        requestLocationCalled = true
    }
}
