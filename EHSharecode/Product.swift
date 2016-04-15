//
//  Product.swift
//  EHSharecode
//
//  Created by Eric Ho on 13/3/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

import Foundation

public class Product: CustomStringConvertible {
    public var name:String?
    public var price:Double?
    
    public init(name:String, price:Double) {
        //note: no super.init() as it is a root class
        self.name = name
        self.price = price
    }
    
    public var description:String {
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .MediumStyle)

        return "\(timestamp) \(self.name ?? "") @ \(self.price ?? 0.0)"
    }
    
}
