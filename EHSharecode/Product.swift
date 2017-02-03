//
//  Product.swift
//  EHSharecode
//
//  Created by Eric Ho on 13/3/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

import Foundation

open class Product: CustomStringConvertible {
    open var name:String?
    open var price:Double?
    
    public init(name:String, price:Double) {
        //note: no super.init() as it is a root class
        self.name = name
        self.price = price
    }
    
    open var description:String {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .medium)

        return "\(timestamp) \(self.name ?? "") @ \(self.price ?? 0.0)"
    }
    
}
