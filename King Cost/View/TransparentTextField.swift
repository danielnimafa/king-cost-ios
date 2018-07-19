//
//  TransparentTextField.swift
//  King Cost
//
//  Created by Daniel Nimafa on 19/07/18.
//  Copyright © 2018 DanielCraft. All rights reserved.
//

import UIKit

@IBDesignable
class TransparentTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        transparentTextField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        transparentTextField()
    }
    
    func transparentTextField(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    

}
