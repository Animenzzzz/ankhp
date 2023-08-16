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
    
    fileprivate func callBack<T: Codable>(_ resp: AFDataResponse<Data?>) -> T? {
        debugPrint(resp)

        guard resp.error == nil else {
            debugPrint("req error \(String(describing: resp.error?.localizedDescription))")
            return nil
        }
        
        if resp.data != nil {
            do {
                let entity = try JSONDecoder().decode(T.self, from: resp.data!)
                return entity
            } catch {
                debugPrint("decode error \(error)")
                return nil
            }
            
        } else {
            debugPrint("req error Failed to convert Data to String")
            return nil
        }
    }
    
    func reqNewsList(_ completionHandler: @escaping (NSError?, ReqNewsListEntity?) -> Void) {
        AF.request(fullUrlNewsList).response { resp in

            let result: ReqNewsListEntity? = self.callBack(resp)
            completionHandler(nil, result)
        }
    }
    
    func reqRecommendList(_ completionHandler: @escaping (NSError?, ReqRecommendListEntity?) -> Void) {
        AF.request(fullUrlRecommendList).response { resp in
            let result: ReqRecommendListEntity? = self.callBack(resp)
            completionHandler(nil, result)
        }
    }
    
    func reqHotList(_ completionHandler: @escaping (NSError?, ReqHotListEntity?) -> Void) {
        AF.request(fullUrlHotList).response { resp in
            let result: ReqHotListEntity? = self.callBack(resp)
            completionHandler(nil, result)
        }
    }
}
