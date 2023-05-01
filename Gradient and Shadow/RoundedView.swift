//
//  RoundedView.swift
//  Gradient and Shadow
//
//  Created by Sergei Semko on 5/1/23.
//

import Foundation
import UIKit

@IBDesignable
class RoundedView: UIView {
    
    var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
