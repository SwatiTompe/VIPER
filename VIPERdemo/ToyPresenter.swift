//
//  ToyPresenter.swift
//  VIPERdemo
//
//  Created by Admin on 15/11/24.
//


protocol presenterProtocol : AnyObject {
    func getToys()
}

class ToyPresenter : presenterProtocol {
    
    weak var view : viewProtocol?
    var interactor : Interactorprotocol?
    
    func getToys() {
        interactor?.fetchToys()
    }
}

extension ToyPresenter : InteractorOutputProtocol {
    
    func gotToys(_ toys: [Toy]) {
        let toyDescriptions = toys.map{"\($0.name) \($0.color)"}
        view?.showToys(toyDescriptions)
    }
    
}
