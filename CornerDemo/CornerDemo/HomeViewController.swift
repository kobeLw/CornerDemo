//
//  HomeViewController.swift
//  CornerDemo
//
//  Created by kobe on 2017/10/7.
//  Copyright © 2017年 kobe. All rights reserved.
//

import UIKit

let ScreenW = UIScreen.main.bounds.size.width
let ScreenH = UIScreen.main.bounds.size.height

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "CornerRadius"
        setUI()
    }
    
    func setUI() {
        let titleArr = ["Swift","Objective-c"]
        for i in 0..<2 {
            let button = UIButton(type: .custom)
            if i == 0
            {
                button.frame = CGRect(x: (ScreenW - 100) / 2, y: ScreenH / 2 - 80, width: 100, height: 60)
            } else {
                button.frame = CGRect(x: (ScreenW - 100) / 2, y: ScreenH / 2 + 20, width: 100, height: 60)
            }
            button.backgroundColor = UIColor.orange
            button.setTitle(titleArr[i], for: .normal)
            button.setTitleColor(UIColor.white, for: .normal)
            button.addTarget(self, action: #selector(click), for: .touchUpInside)
            button.tag = 100 + i
            view.addSubview(button)
            
        }
    }
    
    @objc func click(button: UIButton) {
        if button.tag == 100 {
            navigationController?.pushViewController(SwiftViewController(), animated: true)
            return
        }
        navigationController?.pushViewController(OCViewController(), animated: true)
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
