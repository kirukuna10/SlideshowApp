//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Ai Kitagawa on 2017/05/26.
//  Copyright © 2017年 Ai.Kitagawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    var imageArray = ["image01.jpg","image02.jpg","image03.jpg"]

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named:"image[0].jpg") //image01.jpdを表示
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    @IBOutlet weak var nextButton: UIButton!
 
    
    @IBAction func next(_ sender: Any) {
        count += 1
        if ( count > 2 ) { count = 0 }
            imageView.image = UIImage(named:imageArray[count])
    }
    
    
    @IBOutlet weak var back: UIButton!
    
    @IBAction func back(_ sender: Any) {
        count -= 1
        if ( count < 0 ) { count = 2 }
        imageView.image = UIImage(named:imageArray[count])
    }
    @IBOutlet weak var start: UIButton!
    
    var timer:Timer!
    
    @IBAction func start(_ sender: Any) {
        if ( timer == nil){
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        }
        else{
            timer.invalidate()
            timer = nil
        }
        
    }
    
    func update(){
        count -= 1
        if ( count < 0 ) { count = 2 }
        imageView.image = UIImage(named:imageArray[count])
    }
}

