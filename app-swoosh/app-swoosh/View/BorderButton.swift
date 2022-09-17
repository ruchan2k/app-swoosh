//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Ruçhan Talha Günay on 16.09.2022.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 3.0
        
    }

}
