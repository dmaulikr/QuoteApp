//
//  ViewController.swift
//  QuoteApp
//
//  Created by Tuukka Tallgren on 04/10/15.
//  Copyright © 2015 Tuukka Tallgren. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {


    @IBOutlet weak var lblQuoteAuthor: UILabel!
    @IBOutlet weak var lblQuote: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let intervalTime = 5.0
        
        checkDatabase()
        displayRandomQuote()
        _ = NSTimer.scheduledTimerWithTimeInterval(intervalTime, target: self, selector: "displayRandomQuote", userInfo: nil, repeats: true)
        view.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.9)
        
    }
    
    func checkDatabase() {
       let quoteDAO = QuoteDAO()
       let quotes = quoteDAO.getQuotes()
        
        if quotes.count == 0 {
            quoteDAO.initQuoteDatabase()
        }
    }
    
    func displayRandomQuote() {
        let quoteDAO = QuoteDAO()
        let quote = quoteDAO.getRandomQuote()
        
        lblQuoteAuthor.text = quote.author
        lblQuote.text = quote.quote
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

