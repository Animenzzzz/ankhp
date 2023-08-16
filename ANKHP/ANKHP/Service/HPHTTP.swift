//
//  HPHTTP.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import Alamofire
import Foundation

class HPHTTP: HPAPIProtocols {
    static let shared = HPHTTP()
    
    private init() {}
    
    func reqNewsList(_ completionHandler: @escaping (NSError?, ReqNewsListEntity?) -> Void) {
        AF.request(fullUrlNewsList).response { resp in
            
            guard resp.error == nil else {
                completionHandler(NSError(
                    domain: "fullNewsList",
                    code: 1,
                    userInfo: [NSLocalizedDescriptionKey: "\(String(describing: resp.error?.localizedDescription))"]), nil)
                return
            }
            
            if resp.data != nil {
                do {
                    let entity = try JSONDecoder().decode(ReqNewsListEntity.self, from: resp.data!)
                    completionHandler(nil, entity)
                } catch {
                    completionHandler(NSError(
                        domain: "fullNewsList",
                        code: 1,
                        userInfo: [NSLocalizedDescriptionKey: error.localizedDescription]), nil)
                }
                
            } else {
                completionHandler(NSError(
                    domain: "fullNewsList",
                    code: 1,
                    userInfo: [NSLocalizedDescriptionKey: "Failed to convert Data to String"]), nil)
            }
        }
    }
    
    func reqHotList(_ completionHandler: @escaping (NSError?, ReqNewsListEntity?) -> Void) {
        AF.request(fullUrlHotList).response { resp in
            
            debugPrint(resp)
        }
    }
}
