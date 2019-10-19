//
//  CustomView.swift
//  IBDesignable
//
//  Created by Mohit Kumar on 19/10/2019.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

@IBDesignable class CustomView: UIView {

    var path: UIBezierPath?

    @IBInspectable var customRadius: CGFloat = 10 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var borderColor: UIColor = .red {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 5 {
        didSet {
            updateView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /*
        THIS METHOD IS USED FOR UPDATING VIEW JUST AFTER CLASS IS SET. IF WE DON'T USE THIS METHOD THEN VIEW WILL BE UPDATED ONLY ONCE WE SET CUSTOM PROPERTIES
     */
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        updateView()
    }

    private func updateView() {
        self.layer.cornerRadius = customRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
    }
    
    override func layoutSubviews() {
    }

}
