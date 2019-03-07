//
//  subVC2.swift
//  +GetWild
//
//  Created by 鬼村 大雅 on 2019/03/05.
//  Copyright © 2019年 鬼村 大雅. All rights reserved.
//

import UIKit

class subVC2: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
