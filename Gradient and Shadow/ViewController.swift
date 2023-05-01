//
//  ViewController.swift
//  Gradient and Shadow
//
//  Created by Sergei Semko on 5/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var squareView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.clipsToBounds = false
        view.backgroundColor = .red
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        setConstraints()
    }

    
}


extension ViewController {
    private func setConstraints() {
        view.addSubview(squareView)
        
        let constant: CGFloat = 100
        let sideOfSquare: CGFloat = 128
        
        let squareViewConstraints = [
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constant),
            squareView.widthAnchor.constraint(equalToConstant: sideOfSquare),
            squareView.heightAnchor.constraint(equalToConstant: sideOfSquare)
        ]
        
        NSLayoutConstraint.activate(squareViewConstraints)
    }
}
