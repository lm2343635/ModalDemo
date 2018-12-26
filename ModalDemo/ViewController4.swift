//
//  ViewController4.swift
//  ModalDemo
//
//  Created by mon.ri on 2018/12/26.
//  Copyright © 2018 MuShare. All rights reserved.
//

import UIKit

class ViewController4: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToTop(_ sender: Any) {
        UIApplication.shared.backToRoot {
            print("Finished~")
        }
    }

}
