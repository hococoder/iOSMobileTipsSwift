//
//  TipsCollectionViewCell.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var titleLabel : UILabel!
    
    override init(frame: CGRect)
    {
        super.init(frame:frame)
        
        titleLabel = UILabel(frame: CGRectMake(0, 50, frame.size.width, 40))
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
        
        let spacer1 = UIView()
        spacer1.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.addSubview(spacer1)
        
        let spacer2 = UIView()
        spacer2.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.addSubview(spacer2)
        
        titleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.contentView.addSubview(titleLabel)
        
        let viewsDictionary : NSDictionary = ["titleLabel" : titleLabel, "spacer1" : spacer1, "spacer2" : spacer2]
        
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[spacer1][titleLabel][spacer2(==spacer1)]|", options: nil, metrics: nil, views: viewsDictionary))
   
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
