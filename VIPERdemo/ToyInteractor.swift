//
//  ToyInteractor.swift
//  VIPERdemo
//
//  Created by Admin on 15/11/24.
//


protocol Interactorprotocol : AnyObject {
    func fetchToys()
}

protocol InteractorOutputProtocol : AnyObject {
    func gotToys(_ toys : [Toy])
}

class ToyInteractor : Interactorprotocol {
    
    var presenter : InteractorOutputProtocol?
    
    func fetchToys() {
        let toys = [
            Toy(name: "Ball", color: "red"),
            Toy(name: "car", color: "Blue"),
            Toy(name: "Cycle", color: "Orange")
        ]
        
        presenter?.gotToys(toys)
    }
    
}
