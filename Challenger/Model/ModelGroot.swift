//
//  File.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 11/10/22.
//

import Foundation

struct PostGroot: Encodable {
    let text: String
}

struct ResponseGroot: Decodable {
    let success: ResponseGrootTotal
    let contents: ResponseGrootContent
}

struct ResponseGrootTotal: Decodable {
    let total: Int
}

struct ResponseGrootContent: Decodable {
    let translated: String
    let text: String
    let translation: String
}
