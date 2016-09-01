//
//  ViewController.swift
//  LoopSwift2
//
//  Created by TTB10912 on 01/09/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a = 5
    var _margin:CGFloat = 75
    
    @IBOutlet weak var tf_num: UITextField!

    @IBAction func act_Submit(sender: AnyObject) {
        
        a = Int(tf_num.text!)!
        
        clean()
        drawBall()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    func drawBall()  {
        for indexHang in 0..<a {
            for indexCot in 0..<a{
                let image = UIImage(named: "green")
                let ball = UIImageView(image : image)
                
                ball.center = CGPointMake(_margin + CGFloat(indexHang) * spaceBetweenBalls(), CGFloat(indexCot) * spaceBetweenHBalls()+_margin)
                
                self.view.addSubview(ball)
                
                
            }
            
        }
        
    }
    
    func spaceBetweenBalls() -> CGFloat {
        let space = (self.view.bounds.size.width - 2*_margin)/CGFloat(a-1)

        return space
    }
    func spaceBetweenHBalls() -> CGFloat {
        let spaceH = (self.view.bounds.size.height - 2*_margin)/CGFloat(a-1)
        
        return spaceH
    }
    
    func clean() {
        for subview in view.subviews {
            if subview.isKindOfClass(UIImageView)
            {
                subview.removeFromSuperview()
            }
        }
    }
}

