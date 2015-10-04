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
        
        if quoteResults.count > 0 {
            for quote in quoteResults {
            let quote = quote as Quote
            quotes.append(quote)
            }
            
        }
        
        return quotes
    }
    
    func initQuoteDatabase() {
        
        // TODO: Load these from JSON
        let quote = Quote()
        
        quote.quote = "No one gives it to you. You have to take it"
        quote.author = "Frank Costello / The Departed"
        saveQuote(quote)
        
        let quote2 = Quote()
        quote2.quote = "Mitä väliä mitä muut ihmiset ajattelee? Teet vaan"
        quote2.author = "unknown"
    
        saveQuote(quote2)
    
        let quote3 = Quote()
        quote3.quote = "Elämässä ei kannata miettiä liikaa, se menee pieleen jos kelaa liikaa"
        quote3.author = "Puistokemisti @Tokoinranta"
        
        saveQuote(quote3)
        
        let quote4 = Quote()
        quote4.quote = "Välillä pitääkin vähän tyriä, kokemus tekee niistä hetkistä hyviä"
        quote4.author = "Solonen/Kosola"
    
        saveQuote(quote4)
    
        let quote5 = Quote()
        quote5.quote = "Jos haluat jotain mitä sulla ei oo koskaan ollu, sun pitää tehä jotain mitä et oo koskaan tehny"
        quote5.author = "unknown"
        
        saveQuote(quote5)
        
        let quote6 = Quote()
        quote6.quote = "Das beste oder nichts / The best or nothing at all"
        quote6.author = "Gottlieb Daimler"
        
        saveQuote(quote6)
        
        let quote7 = Quote()
        quote7.quote = "Rohkeus ei oo sitä ettei pelota vaan et uskaltaa hypätä vaik ei tiedä selviikö elossa"
        quote7.author = "Cheek"
    
        saveQuote(quote7)
        
        let quote8 = Quote()
        quote8.quote = "It's impossible, that's sure. So let's start working."
        quote8.author = "Philippe Petit"
        
        saveQuote(quote8)
        
    }
    

}