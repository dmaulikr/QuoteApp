//
//  QuoteDAO.swift
//  QuoteApp
//
//  Created by Tuukka Tallgren on 04/10/15.
//  Copyright © 2015 Tuukka Tallgren. All rights reserved.
//

import UIKit
import RealmSwift

class QuoteDAO: Object {
    
    func saveQuote (quote: Quote) {
        let realm = try! Realm()
        
        realm.write {
            realm.add(quote)
        }
        
    }

    func getRandomQuote() -> Quote {
        
        let allQuotes = getQuotes()
        let utility = QuoteUtility()
        let randomIndex = utility.randomInt(0, max: allQuotes.count-1)
        
        return allQuotes[randomIndex]
        
    }
    
    func deleteQuotes() {
        let realm = try! Realm()
        realm.write {
            realm.deleteAll()
        }
    }
    
    func getQuotes() -> [Quote] {
        
        let quoteResults = try! Realm().objects(Quote)
        var quotes = [Quote]()
        
        for quote in quoteResults {
            let quote = quote as Quote
            quotes.append(quote)
        }
        
        return quotes
    }
    

}
