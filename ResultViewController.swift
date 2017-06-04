//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Ai Kitagawa on 2017/05/29.
//  Copyright © 2017年 Ai.Kitagawa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imagename)
        // Do any additional setup after loading the view.
    }

   
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagename: String = ""
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
