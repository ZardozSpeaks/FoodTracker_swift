//
//  RatingControl.swift
//  FoodTracker
//
//  Created by David Remington on 9/8/16.
//  Copyright © 2016 David Remington. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    //MARK: Properties
    
    
    var rating = 0
    var ratingButtons = [UIButton]()
    

    //MARK: Initialization
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
        addSubview(button)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    //MARK: Button Action
    
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}
