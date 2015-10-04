//
//  Quote.swift
//  QuoteApp
//
//  Created by Tuukka Tallgren on 04/10/15.
//  Copyright © 2015 Tuukka Tallgren. All rights reserved.
//

import UIKit
import RealmSwift

class Quote: Object {
    dynamic var quote = "Teet vaan"
    dynamic var author = "unknown"
}
