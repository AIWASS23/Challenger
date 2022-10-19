//
//  File.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 11/10/22.
//

import Foundation

struct PostGroot: Encodable {

    let textPost: String

    init(textPost: String) {
        self.textPost = textPost
    }
}

struct ResponseGroot: Decodable {

    let success: UInt
    let translated: String
    let textResponse: String
    let translation: String

    init(success: UInt, translated: String, textResponse: String, translation: String) {
        self.success = success
        self.translated = translated
        self.textResponse = textResponse
        self.translation = translation

    }
}
