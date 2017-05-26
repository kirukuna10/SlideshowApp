//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Ai Kitagawa on 2017/05/26.
//  Copyright © 2017年 Ai.Kitagawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named:"image01.jpg") //image01.jpdを表示
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

