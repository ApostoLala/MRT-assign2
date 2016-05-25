//
//  LineData.swift
//  MRT
//

import Foundation
import UIKit
import SwiftyJSON

//import SwiftyJSON to load MRT.json

struct LineData {
    
    var Line : String
    var station : [String]
    var stationlineno : [[String]]
    var stationlinename : [[String]]
    
    init(title: String, objects : [String], no: [[String]], line: [[String]]) {
        
        Line = title
        station = objects
        stationlineno = no
        stationlinename = line
    }
}

