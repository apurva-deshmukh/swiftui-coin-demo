//
//  ChartData.swift
//  SwiftCoin
//
//  Created by Apurva Deshmukh on 12/3/22.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID().uuidString
    
    let date: Date
    let value: Double
    
    
}
