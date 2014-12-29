//
//  Utils.swift
//  IMGeostationary
//
//  Created by System on 29/12/14.
//  Copyright (c) 2014 Unelma. All rights reserved.
//

import Foundation


func toRadians (angle : Double) -> Double {
    
    return angle * (M_PI / 180.0)
    
}


func toDegrees (radians : Double) ->  Double {
    
    return radians * 180.0 / M_PI
}