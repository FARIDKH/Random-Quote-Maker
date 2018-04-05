//
//  ViewController.swift
//  Random Quotes
//
//  Created by Farid Qanbarov on 4/3/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {

    
    var authorName : String?
    var quote : String?
    var authorIndex : Int?
    
    
    var quotes = [
        "Marilyn Monroe" : "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.",
        "Oscar Wilde": "Be yourself; everyone else is already taken.",
        "Albert Einstein" : "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
        "Frank Zappa" : "So many books, so little time.",
        "Bernard M. Baruch" : "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind."
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        view.addSubview(quoteTextView)
        view.addSubview(quoteTextView)
        let barButton = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reloadQuotes))
      
//        let barButton = UIBarButtonItem(title: "Reload", style: .plain, target: self, action: #selector(reloadQuotes))
        self.navigationItem.rightBarButtonItem = barButton
        view.backgroundColor = UIColor(gradientStyle: UIGradientStyle.leftToRight ,
                                       withFrame: CGRect(x:0,y:0,width:view.frame.width,height:view.frame.height),
                                       andColors: [UIColor.red,UIColor.blue])
        
    }

    @objc func reloadQuotes() {
        
        let randomNumberForAuthor = min(Int(arc4random_uniform(6) + 1),4)
        
        authorIndex = randomNumberForAuthor
        self.authorName = Array(quotes.keys)[randomNumberForAuthor]
        self.quote = Array(quotes.values)[randomNumberForAuthor]
        setupLayout()
    }
    
    
    
    let quoteTextView : UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .clear
        return textView
    }()
    
    
    
    func setupLayout() {
        let topContainer = UIView()
        //        topContainer.backgroundColor = .blue
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topContainer)
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .right
        if let quote = self.quote,
            let authorName = self.authorName {
            let attributedText = NSMutableAttributedString(string: " “ ", attributes: [NSAttributedStringKey.font:UIFont.boldSystemFont(ofSize: 60)])
            attributedText.append(NSMutableAttributedString(string: "\(quote)" ,attributes:[NSAttributedStringKey.font:UIFont.italicSystemFont(ofSize: 30)]))
            attributedText.append(NSAttributedString(string: "\n\n\n\(authorName)", attributes: [NSAttributedStringKey.paragraphStyle : paragraph, NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 15)]))
            
            quoteTextView.attributedText = attributedText
        }
        
        
        NSLayoutConstraint.activate([
            topContainer.topAnchor.constraint(equalTo: view.topAnchor),
            topContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
        NSLayoutConstraint.activate([
            quoteTextView.centerXAnchor.constraint(equalTo: topContainer.centerXAnchor),
            quoteTextView.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor),
            quoteTextView.heightAnchor.constraint(equalTo: topContainer.heightAnchor, multiplier: 0.5),
            quoteTextView.widthAnchor.constraint(equalTo: topContainer.widthAnchor)
            ])
    }
    
    

}

