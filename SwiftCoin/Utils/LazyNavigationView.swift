//
//  LazyNavigationView.swift
//  SwiftCoin
//
//  Created by Apurva Deshmukh on 12/5/22.
//

import SwiftUI

struct LazyNavigationView<Content: View> : View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
