//
//  IMCalculator.swift
//  IMGeostationary
//
//  Created by Ismael Morales on 9/12/14.
//  Copyright (c) 2014 Unelma. All rights reserved.
//

import UIKit

class IMCalculator {
   
    func calculatorPositionSatellite ( latitude : Double, longitude : Double, angleSatellite : Double) -> Array<Double> {
        
        var result = Array<Double>()
        var sat = IMSatellite()
        var earth = IMPlanet(rP: 6371, rOG: 6371 + 35786)
        var ant = IMAntenna()
        
        sat.placeGeostationary(earth, angle: angleSatellite)
        ant.place(earth, lon: longitude, lat: latitude)
        ant.pointTo(sat)
        
        result.append(ant.getAcimut())
        result.append(ant.getElevation())
        
        return result
    }
    
   }
