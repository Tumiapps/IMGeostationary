//
//  Planet.swift
//  IMGeostationary
//
//  Created by System on 9/12/14.
//  Copyright (c) 2014 Ismael Morales. All rights reserved.
//

import UIKit

public class IMPlanet: NSObject {
    
    public let radiusPLanet : Float
    public let radiusOrbitGeostationary : Float
    
    public init(rP: Float, rOG: Float ){
        
        self.radiusPLanet = rP
        self.radiusOrbitGeostationary = rOG
    }
    
    
}
