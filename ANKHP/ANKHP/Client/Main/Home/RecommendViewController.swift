//
//  RecommendViewController.swift
//  ANKHP
//
//  Created by mac on 2023/8/22.
//

import Foundation
import UIKit

class RecommendViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let recommendBtn = UIButton(frame: CGRect(x: 50, y: 100, width: 200, height: 30))
        recommendBtn.addTarget(self, action: "reqRecommendTap:", for: .touchUpInside)
        recommendBtn.setTitle("recommendBtn", for: .normal)
        recommendBtn.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(recommendBtn)
    }
    
    @IBAction func reqRecommendTap(_ sender: Any) {
        HPHTTP.shared.reqRecommendList { err, data in
            if err == nil, data != nil {
                data!.result.data.forEach { item in
                    print("shittt \(item.data.title)")
                }
            }
        }
    }
}
