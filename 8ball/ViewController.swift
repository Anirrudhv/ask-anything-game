//
//  ViewController.swift
//  8ball
//
//  Created by Anirudh V on 6/7/18.
//  Copyright © 2018 Anirudh V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balls: UIImageView!
    var ballnumber:Int = 0
    let arr1 = ["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ask(_ sender: Any) {
        ani()
        
    }
    func ani()
    {
        ballnumber = Int(arc4random_uniform(5))
        balls.image = UIImage(named: arr1[ballnumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ani()
    }
}

