//
//  ViewController.swift
//  VIPERdemo
//
//  Created by Admin on 15/11/24.
//

import UIKit

protocol viewProtocol : AnyObject {
    func showToys(_ toyDescription : [String])
}

class ToyScreen: UIViewController, viewProtocol {
    
    var presenter : presenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        displayScreen()
    }

    func displayScreen() {
        presenter?.getToys()
    }

    func showToys(_ toyDescription: [String]) {
        print("toys on the screen are \(toyDescription.joined(separator: ", "))")
    }
    
}

