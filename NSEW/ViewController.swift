//
//  ViewController.swift
//  NSEW
//
//  Created by Ashwin Mahesh on 7/9/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPushed(_ sender: UIButton) {
        let text=sender.title(for: .normal)
        print("Button for \(text) pushed")
        performSegue(withIdentifier: "MoveSegue", sender: text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let text=sender as? String{
            let destination=segue.destination as! OtherVC
            destination.text=text
        }
    }

}

