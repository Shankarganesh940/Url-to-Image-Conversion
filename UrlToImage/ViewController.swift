//
//  ViewController.swift
//  UrlToImage
//
//  Created by Greeens5 on 16/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var image: UIImageView!
    
    
let urlkey = "http://www.cbronline.com/wp-content/uploads/2016/05/iOS.jpg"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func button(_ sender: Any) {
        
        let url = URL(string: urlkey)
        let data = try?Data(contentsOf: url!)
        image.image = UIImage(data: data!)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

