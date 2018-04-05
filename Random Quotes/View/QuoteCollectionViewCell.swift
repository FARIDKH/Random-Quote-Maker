//
//  QuoteCollectionViewCell.swift
//  Random Quotes
//
//  Created by Farid Qanbarov on 4/3/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit
import ChameleonFramework


class QuoteCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let barButton = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reloadQuotes))
        
        //        let barButton = UIBarButtonItem(title: "Reload", style: .plain, target: self, action: #selector(reloadQuotes))
        
//        backgroundColor = UIColor(gradientStyle: UIGradientStyle.leftToRight ,
//                                       withFrame: CGRect(x:0,y:0,width:frame.width,height:frame.height),
//                                       andColors: [UIColor.red,UIColor.blue])
        
        backgroundColor = UIColor.flatForestGreen()
        addSubview(quoteTextView)
//        addSubview(pc)

        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func reloadQuotes() {
        
    }
    
    
    private let quoteTextView : UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .right
        let attributedText = NSMutableAttributedString(string: " “ ", attributes: [NSAttributedStringKey.font:UIFont.boldSystemFont(ofSize: 60)])
        attributedText.append(NSMutableAttributedString(string: "Don't cry because it's over, smile because it happened", attributes:[NSAttributedStringKey.font:UIFont.italicSystemFont(ofSize: 30)]))
        attributedText.append(NSAttributedString(string: "\n\n\nBenedict Cumberbatch", attributes: [NSAttributedStringKey.paragraphStyle : paragraph, NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 15)]))
        textView.attributedText = attributedText
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = UIColor.clear
        return textView
    }()
    
    func setupLayout() {
//        let firstView = UIView()
//        firstView.backgroundColor = .red
//        let secondView = UIView()
//        secondView.backgroundColor = .black
//        let bottomContainer = UIStackView(arrangedSubviews: [firstView,pc,secondView])
//        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
//        bottomContainer.distribution = .fillEqually
//        addSubview(bottomContainer)
//        
        let topContainer = UIView()
//        topContainer.backgroundColor = .blue
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        addSubview(topContainer)
        NSLayoutConstraint.activate([
            topContainer.topAnchor.constraint(equalTo: topAnchor),
            topContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            topContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            topContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5)
            ])
        NSLayoutConstraint.activate([
            quoteTextView.centerXAnchor.constraint(equalTo: topContainer.centerXAnchor),
            quoteTextView.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor),
            quoteTextView.heightAnchor.constraint(equalTo: topContainer.heightAnchor, multiplier: 0.5),
            quoteTextView.widthAnchor.constraint(equalTo: topContainer.widthAnchor),
            ])
        
    }
    
    
}

