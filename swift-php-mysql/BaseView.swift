//
//  View.swift
//  swift-php-mysql
//
//  Created by Andreas Hafsaas on 09.05.2017.
//  Copyright © 2017 Andreas Hafsaas. All rights reserved.
//

import UIKit

class BaseView: UIView
{
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
    }
    
    /**
     * basic setup method that needs to be implemented
     */
    func setupViews(){}
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
