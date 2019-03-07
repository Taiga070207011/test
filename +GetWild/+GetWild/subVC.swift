//
//  subVC.swift
//  +GetWild
//
//  Created by 鬼村 大雅 on 2019/03/05.
//  Copyright © 2019年 鬼村 大雅. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class subVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        let c = UIImagePickerController()
        super.viewDidLoad()
        c.delegate = self
        c.mediaTypes = ["public.image", "public.movie"]
        present(c,animated: true)
        
    }
}

extension subVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //キャンセルボタン押下時に呼び出される
        dismiss(animated: true, completion: nil)
    }
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //画像選択時に呼び出される
        
        if let image1 =  info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            imageView.image = image1
            imageView.contentMode = UIView.ContentMode.scaleAspectFit
            
        }
        dismiss(animated: true, completion: nil)
        
        imageView.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
