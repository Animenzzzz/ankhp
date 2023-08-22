//
//  HotViewCotroller.swift
//  ANKHP
//
//  Created by mac on 2023/8/22.
//

import Foundation
import UIKit

class HotViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        
        let hotBtn = UIButton(frame: CGRect(x: 50, y: 150, width: 200, height: 30))
        hotBtn.addTarget(self, action: "reqHotTap:", for: .touchUpInside)
        hotBtn.setTitle("hotBtn", for: .normal)
        hotBtn.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(hotBtn)
        
    }
    
    @IBAction func reqHotTap(_ sender: Any) {
        HPHTTP.shared.reqHotList { err, data in
            if err == nil, data != nil {
                data?.result.listV2.forEach { item in
                    print("shittt \(item.thread.title)")
                }
            }
        }
    }
}
