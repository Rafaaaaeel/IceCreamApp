//
//  ViewControllerProtocols.swift
//  IceCreamApp
//
//  Created by Rafael Oliveira on 26/04/22.
//

import Foundation


public protocol ViewControllerFunctions{
    func setup()
    func setupHierarchy()
    func setupConstraints()
    func additionalSetup()
}

extension ViewControllerFunctions{
    func setup(){
        setupHierarchy()
        setupConstraints()
        additionalSetup()
    }
    
    func additionalSetup() { }
}
