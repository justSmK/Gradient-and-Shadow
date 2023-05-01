//
//  GradientView.swift
//  Gradient and Shadow
//
//  Created by Sergei Semko on 5/1/23.
//

import Foundation
import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var startColor: UIColor = UIColor.red {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var endColor: UIColor = UIColor.blue {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 25 {
        didSet {
            setNeedsLayout()
        }
    }
    
    private var gradientLayer: CAGradientLayer!
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer = layer as? CAGradientLayer
                gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
                gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
                gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

                layer.cornerRadius = cornerRadius
                layer.masksToBounds = false

                layer.shadowColor = UIColor.black.cgColor
                layer.shadowOffset = CGSize(width: 0, height: 2)
                layer.shadowOpacity = 3
                layer.shadowRadius = 10
    }
}
