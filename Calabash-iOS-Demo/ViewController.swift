//
//  ViewController.swift
//  Calabash-iOS-Demo
//
//  Created by iMeraj-MacbookPro on 06/03/2017.
//  Copyright © 2017 Mohammad Merajul Islam Molla. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        _ = username.rx.text
            .shareReplay(1)
        
        _ = password.rx.text
            .shareReplay(1)
        
        loginButton.rx.tap
            .subscribe(onNext: { [weak self] in self?.showAlert() })
            .addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Calabash-iOS-Demo", message: "Stay tuned!", preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true)
    }
}

