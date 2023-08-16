//
//  ViewController.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import UIKit

class MainViewController: UIViewController {
    @IBAction func reqHotTap(_ sender: Any) {
        HPHTTP.shared.reqHotList { err, data in
            if err == nil, data != nil {
                data?.result.listV2.forEach{item in
                    print("shittt \(item.thread.title)")
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

    @IBAction func reqNBATap(_ sender: Any) {
        HPHTTP.shared.reqNewsList { err, data in
            if err == nil, data != nil {
                data!.result.data.forEach { item in
                    print("shittt \(item.type)")
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
}
