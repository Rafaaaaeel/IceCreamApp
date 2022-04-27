//
//  ViewController.swift
//  IceCreamApp
//
//  Created by Rafael Oliveira on 26/04/22.
//

import UIKit

class MainViewController: UIViewController, ViewControllerFunctions {

    public lazy var menuButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "line.3.horizontal", withConfiguration: UIImage.SymbolConfiguration(scale: .large)), for: [])
        button.tintColor = .black
        return button
    }()
    
    public var contentView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension MainViewController{
    func setupHierarchy() {
        
        view.addSubview(contentView)
        view.addSubview(menuButton)
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
            contentView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            contentView.heightAnchor.constraint(equalToConstant: 45),
            contentView.widthAnchor.constraint(equalToConstant: 45),
            
            menuButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            menuButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
            
        ])
        
    }
    
    func additionalSetup() {
        view.backgroundColor = .systemGray5
        
    }
}

