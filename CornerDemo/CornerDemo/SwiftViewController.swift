//
//  SwiftViewController.swift
//  CornerDemo
//
//  Created by kobe on 2017/10/7.
//  Copyright © 2017年 kobe. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Swift"
        
        setUpView()
        
    }
    
    func setUpView() {
        let examleView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        examleView.center = view.center
        examleView.backgroundColor = UIColor.red
        view.addSubview(examleView)
        cornerRadius(cornerView: examleView)
    }
    
    func cornerRadius(cornerView: UIView) {
        let rect = cornerView.bounds 
        let radio = CGSize(width: 30, height: 30) // 圆角尺寸
        let corner = UInt8(UIRectCorner.topLeft.rawValue) | UInt8(UIRectCorner.topRight.rawValue) // 这只圆角位置
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: UIRectCorner(rawValue: UIRectCorner.RawValue(corner)), cornerRadii: radio)
        let masklayer = CAShapeLayer() // 创建shapelayer
        masklayer.frame = cornerView.bounds
        masklayer.path = path.cgPath // 设置路径
        cornerView.layer.mask = masklayer
        
    }

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
