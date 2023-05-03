//
//  ViewController.swift
//  Gradient and Shadow
//
//  Created by Sergei Semko on 5/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let leadingAnchorConstant: CGFloat = 100
    private let sideOfSquare: CGFloat = 128
    private let cornerRadius: CGFloat = 13
    
    private lazy var squareView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = cornerRadius
        return view
    }()
    
    private lazy var gradientLayer: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.red.cgColor,
                           UIColor.green.cgColor,
                           UIColor.orange.cgColor,
                           UIColor.black.cgColor,
                           UIColor.white.cgColor,
                           UIColor.blue.cgColor,
                           UIColor.gray.cgColor
        ]
        gradient.locations = [0, 0.1, 0.25, 0.4, 0.6, 0.8, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = cornerRadius
        return gradient
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        setConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = squareView.bounds
    }

}

extension ViewController {
    private func setShadow() {
        squareView.layer.shadowColor = UIColor.red.cgColor
        squareView.layer.shadowOpacity = 1
        squareView.layer.shadowOffset = CGSize(width: 5, height: 5)
        squareView.layer.shadowRadius = 13
    }
}

// MARK: Set Constraints
extension ViewController {
    private func setConstraints() {
        setShadow()
        view.addSubview(squareView)
        squareView.layer.addSublayer(gradientLayer)
        
        let squareViewConstraints = [
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingAnchorConstant),
            squareView.widthAnchor.constraint(equalToConstant: sideOfSquare),
            squareView.heightAnchor.constraint(equalToConstant: sideOfSquare)
        ]
        
        NSLayoutConstraint.activate(squareViewConstraints)
    }
}

