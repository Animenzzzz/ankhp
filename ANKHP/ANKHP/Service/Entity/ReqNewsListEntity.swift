//
//  ReqNewsListEntity.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

// https://app.quicktype.io

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reqNewsListEntity = try? JSONDecoder().decode(ReqNewsListEntity.self, from: jsonData)

// MARK: - ReqNewsListEntity

struct ReqNewsListEntity: Codable {
    let errorCode, errorMsg: String
    let result: Result
    let success: Bool
    let traceID: JSONNull?
    let hostName, msg: String
    let status: Int

    enum CodingKeys: String, CodingKey {
        case errorCode, errorMsg, result, success
        case traceID = "traceId"
        case hostName, msg, status
    }
}

// MARK: - Result
struct Result: Codable {
    let adPageID: String
    let data: [Datum]
    let topNewsCount: Int

    enum CodingKeys: String, CodingKey {
        case adPageID = "ad_page_id"
        case data, topNewsCount
    }
}

// MARK: - Datum

struct Datum: Codable {
    let nid: String
    let tid: String?
    let type: TypeEnum
    let title: String
    let img: String
    let replies, lights: Int
    let link: String
    let linkType: LinkType?
    let badge: [[String: String?]]
    let publishTime: String
    let addTime: Int
    let oldNewsID: String
    let top: Bool
    let pv, gifList: JSONNull?
    let read: String
    let showComment: Int

    enum CodingKeys: String, CodingKey {
        case nid, tid, type, title, img, replies, lights, link, linkType, badge, publishTime, addTime
        case oldNewsID = "oldNewsId"
        case top, pv, gifList, read, showComment
    }
}

enum LinkType: String, Codable {
    case h5 = "H5"
    case post = "POST"
    case video = "VIDEO"
}

enum TypeEnum: String, Codable {
    case imgText = "IMG_TEXT"
    case link = "LINK"
    case video = "VIDEO"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
