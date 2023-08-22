//
//  NewsViewController.swift
//  ANKHP
//
//  Created by mac on 2023/8/22.
//

import Foundation
import UIKit

class NewsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let newListBtn = UIButton(frame: CGRect(x: 50, y: 50, width: 200, height: 30))
        newListBtn.addTarget(self, action: "reqNBATap:", for: .touchUpInside)
        newListBtn.setTitle("newListBtn", for: .normal)
        newListBtn.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(newListBtn)
    }
    
    @IBAction func reqNBATap(_ sender: Any) {
        HPHTTP.shared.reqNewsList { err, data in
            if err == nil, data != nil {
                data!.result.data.forEach { item in
                    print("shittt \(item.type)")
                }
            }
        }
    }
}
