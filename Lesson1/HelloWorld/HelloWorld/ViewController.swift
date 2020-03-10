//
//  ViewController.swift
//  HelloWorld
//
//  Created by powerchip on 2019/8/30.
//  Copyright © 2019 powerchip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showMessage(_ sender: UIButton) {
        titleLable.text = "Hello World"
    }
    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "First App", message: "Hello World", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
            print("首頁出現了")
    }
}

