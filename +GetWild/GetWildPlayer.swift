//
//  GetWildPlayer.swift
//  +GetWild
//
//  Created by 鬼村 大雅 on 2019/03/06.
//  Copyright © 2019年 鬼村 大雅. All rights reserved.
//

import UIKit
import Photos
import AVFoundation

class GetWildPlayer: UIViewController {
    
    
    @IBOutlet weak var subImageView: UIImageView!
    override func viewDidLoad() {
        let c2 = UIImagePickerController()
        super.viewDidLoad()
        c2.delegate = self
        c2.mediaTypes = ["public.image", "public.movie"]
        present(c2,animated: true)
        
    }
}

extension GetWildPlayer: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //キャンセルボタン押下時に呼び出される
        
        
    }
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //画像選択時に呼び出される
        
        if let image2 =  info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            subImageView.image = image2
            subImageView.contentMode = UIView.ContentMode.scaleAspectFit
            
        }
        dismiss(animated: true, completion: nil)
        
        subImageView.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
