//
//  SCroundingbuttons.swift
//  Calculating
//
//  Created by Sam Camp on 2/19/18.
//  Copyright © 2018 Sam Camp. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class SCroundingbuttons: UIButton
{
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                self.layer.cornerRadius = cornerRadius
            }
    }
}
