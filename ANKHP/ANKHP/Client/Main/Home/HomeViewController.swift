//
//  HomeController.swift
//  ANKHP
//
//  Created by mac on 2023/8/22.
//

import Foundation

import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        self.layoutUI()
    }

    func layoutUI() {
        let newListBtn = UIButton(frame: CGRect(x: 50, y: 50, width: 200, height: 30))
        newListBtn.addTarget(self, action: "reqNBATap:", for: .touchUpInside)
        newListBtn.setTitle("newListBtn", for: .normal)
        newListBtn.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(newListBtn)

        let recommendBtn = UIButton(frame: CGRect(x: 50, y: 100, width: 200, height: 30))
        recommendBtn.addTarget(self, action: "reqRecommendTap:", for: .touchUpInside)
        recommendBtn.setTitle("recommendBtn", for: .normal)
        recommendBtn.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(recommendBtn)
        
        let hotBtn = UIButton(frame: CGRect(x: 50, y: 150, width: 200, height: 30))
        hotBtn.addTarget(self, action: "reqHotTap:", for: .touchUpInside)
        hotBtn.setTitle("hotBtn", for: .normal)
        hotBtn.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(hotBtn)
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

    @IBAction func reqRecommendTap(_ sender: Any) {
        HPHTTP.shared.reqRecommendList { err, data in
            if err == nil, data != nil {
                data!.result.data.forEach { item in
                    print("shittt \(item.data.title)")
                }
            }
        }
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
