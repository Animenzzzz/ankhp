// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reqHotListEntity = try? JSONDecoder().decode(ReqHotListEntity.self, from: jsonData)

import Foundation

// MARK: - ReqHotListEntity
struct ReqHotListEntity: Codable {
    let result: Result3
    let crt: Int
}

// MARK: - Result
struct Result3: Codable {
    let listV2: [ListV23]
    let adPageID: String
    let count: Int

    enum CodingKeys: String, CodingKey {
        case listV2
        case adPageID = "ad_page_id"
        case count
    }
}

// MARK: - ListV2
struct ListV23: Codable {
    let isTop: Bool
    let order: Int
    let schemaURL, createTime: String
    let thread: Thread3

    enum CodingKeys: String, CodingKey {
        case isTop, order
        case schemaURL = "schemaUrl"
        case createTime, thread
    }
}

// MARK: - Thread
struct Thread3: Codable {
    let fid, createTime, lastpostTime, type: String
    let title: String
    let tid, visits: Int
    let forumLogo: String
    let lightReplies: [LightReply3]
    let puid, replies: Int
    let forumName: String
    let totalPics, recommendNum: Int
    let topicName, nickname: String
    let topicLogo, header: String
    let topicID: Int
    let attr: String
    let pics: [Pic3]
    let lights, shareNum: Int
    let share: Share3
    let isHot, contentType: Int
    let nftInfo: NftInfo3
    let isLock, status: Int

    enum CodingKeys: String, CodingKey {
        case fid
        case createTime = "create_time"
        case lastpostTime = "lastpost_time"
        case type, title, tid, visits
        case forumLogo = "forum_logo"
        case lightReplies = "light_replies"
        case puid, replies
        case forumName = "forum_name"
        case totalPics = "total_pics"
        case recommendNum = "recommend_num"
        case topicName = "topic_name"
        case nickname
        case topicLogo = "topic_logo"
        case header
        case topicID = "topic_id"
        case attr, pics, lights
        case shareNum = "share_num"
        case share
        case isHot = "is_hot"
        case contentType, nftInfo
        case isLock = "is_lock"
        case status
    }
}

// MARK: - LightReply
struct LightReply3: Codable {
    let lightCount, allLightCount, puid, totalPics: Int
    let nickname: String
    let header: String
    let pid: Int
    let attr: String
    let pics: [JSONAny]
    let content: String
    let quote: Quote3?
    let createTime: Int

    enum CodingKeys: String, CodingKey {
        case lightCount = "light_count"
        case allLightCount, puid
        case totalPics = "total_pics"
        case nickname, header, pid, attr, pics, content, createTime, quote
    }
}

// MARK: - Quote
struct Quote3: Codable {
    let nickname: String?
    let attr, content: String
    let pid: Int
}

// MARK: - NftInfo
struct NftInfo3: Codable {
}

// MARK: - Pic
struct Pic3: Codable {
    let url: String
    let isGIF: Int
    let width, height: String

    enum CodingKeys: String, CodingKey {
        case url
        case isGIF = "is_gif"
        case width, height
    }
}

// MARK: - Share
struct Share3: Codable {
    let url: String
    let wechatMoments, wechat, qzone, weibo: String
    let qq, summary: String

    enum CodingKeys: String, CodingKey {
        case url
        case wechatMoments = "wechat_moments"
        case wechat, qzone, weibo, qq, summary
    }
}

