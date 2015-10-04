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
    @IBOutlet weak var lblQuoteQuote: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let quoteDAO = QuoteDAO()
        let quote = quoteDAO.getRandomQuote()
        
       // quoteDAO.deleteQuotes()
        
        lblQuoteAuthor.text = quote.author
        lblQuoteQuote.text = quote.quote
        view.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.9)
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

