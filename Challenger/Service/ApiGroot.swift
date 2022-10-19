//
//  ApiRotas.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 10/10/22.
//

import Foundation

class API {

    static func getAPI(text: PostGroot) async -> [ResponseGroot] {

        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.funtranslations.com"
        components.path = "/translate/groot"
        components.queryItems = [URLQueryItem(name: "text", value: "\(text)")]
//        components.string
        let url1 = components.url!

        var urlRequest = URLRequest(url: url1)
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]

        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            return try JSONDecoder().decode([ResponseGroot].self, from: data)
        } catch {
            print(error)
        }
        return []
    }

    static func postAPI(text: String) async {

        var urlRequest = URLRequest(url: URL(string: "https://api.funtranslations.com/translate/groot")!)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]

        do {
            urlRequest.httpBody = try JSONEncoder().encode(PostGroot(textPost: text))
            let (_, response) = try await URLSession.shared.data(for: urlRequest)
            if let responseHead = response as? HTTPURLResponse {
                print(responseHead.statusCode == 200)
            }
        } catch {
            print(error)
        }
    }
}
