//
//  StatisticModel.swift
//  SwiftCoin
//
//  Created by Apurva Deshmukh on 12/3/22.
//

import Foundation

struct StatisticModel: Identifiable {
   
    let id = UUID().uuidString
    
    let title: String
    let value: String
    let percentChange: Double?
}
