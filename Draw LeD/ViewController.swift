//
//  ViewController.swift
//  Draw LeD
//
//  Created by Doãn Tuấn on 11/19/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _margin :CGFloat = 20
    var _top :CGFloat = 70
    
    @IBOutlet weak var numOfBall: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawRowBalls(num: Int){
        for indexRow in 0..<num {
            for indexCol in 0..<num {
                let image =  UIImage(named: "green")
                
                let ball = UIImageView(image: image)
                
                ball.center = CGPoint(x: CGFloat(indexRow)*spaceBetweenRow(num: num)+_margin,y: CGFloat(indexCol)*spaceBetweenCol(num: num)+_top)
                
                self.view.addSubview(ball)
            }
        }
    }
    @IBAction func DrawBall(_ sender: Any) {
        let numberOfBall: Int = Int(numOfBall.text!)!
        
        drawRowBalls(num: numberOfBall)
    }
    
    func spaceBetweenRow(num :Int) -> CGFloat{
        
        let width  = self.view.bounds.width
        return (width-2*_margin)/CGFloat(num-1)
    }
    func spaceBetweenCol(num: Int) -> CGFloat{
        let height  =  self.view.bounds.height - 70
        
        return (height-2*_margin)/CGFloat(num-1)
    }

}

