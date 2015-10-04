//
//  QuoteUtility.swift
//  QuoteApp
//
//  Created by Tuukka Tallgren on 04/10/15.
//  Copyright © 2015 Tuukka Tallgren. All rights reserved.
//

import UIKit

class QuoteUtility: NSObject {
    
    func randomInt(min: Int, max:Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }

}
