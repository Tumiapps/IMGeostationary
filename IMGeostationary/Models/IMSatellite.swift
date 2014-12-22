//
//  Satellite.swift
//  IMGeostationary
//
//  Created by Ismael Morales on 9/12/14.
//  Copyright (c) 2014 Ismael Morales. All rights reserved.
//

import UIKit

public class IMSatellite {
   
    private let position : IMVector3D?
    

    func placeGeostationary (planet : IMPlanet, angle : Double ) -> IMVector3D {
        
        return IMVector3D (valourX: cos(angle) , valourY: sin(angle), valourZ: 0.0)
    }
 
}
