//
//  FirstViewController.swift
//  ModalDemo
//
//  Created by mon.ri on 2018/12/18.
//  Copyright © 2018 MuShare. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func gotoSecond(_ sender: Any) {
//        performSegue(withIdentifier: "secondSegue", sender: self)
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondViewController")
        present(secondViewController, animated: true) {
            self.dismiss(animated: false, completion: nil)
        }
    }
}
