//
//  ToyRouter.swift
//  VIPERdemo
//
//  Created by Admin on 16/11/24.
//

protocol RouterProtocol : AnyObject {
    static func createModule() -> ToyScreen
}

class ToyRouter : RouterProtocol {
    
    static func createModule() -> ToyScreen {
        
        let view = ToyScreen()
        let presenter = ToyPresenter()
        let interactor = ToyInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
     
}
