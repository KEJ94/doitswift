//
//  ViewController.swift
//  ImageView
//
//  Created by 김응주 on 2023/07/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }

    @IBAction func btnResizaImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom){
            // 축소
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("확대", for: .normal)
        }else{
            // 확대
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("축소", for: .normal)
        }
        
        isZoom = !isZoom
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
}

