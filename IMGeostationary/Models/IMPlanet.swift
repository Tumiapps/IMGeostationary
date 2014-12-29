//
//  Planet.swift
//  IMGeostationary
//
//  Created by Ismael Morales on 9/12/14.
//  Copyright (c) 2014 Ismael Morales. All rights reserved.
//

import UIKit

public class IMPlanet {
    
    public let radiusPLanet : Double
    public let radiusOrbitGeostationary : Double
    
    public init(rP: Double, rOG: Double ){
        
        self.radiusPLanet = rP
        self.radiusOrbitGeostationary = rOG
    }
    
    func getRadiusPlanet() -> Double{
        return self.radiusPLanet
    }
    
    func getRadiusOrbitGeostationary() -> Double {
        return self.radiusOrbitGeostationary
    }
    
    
}
