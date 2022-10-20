//
//  ApiRotas.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 10/10/22.
//

import Foundation

enum ErrorAPI: Error {
    case defaultError
}

class API {

    static func getAPI(text: PostGroot) async -> Result<ResponseGroot, ErrorAPI> {

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
            let response = try JSONDecoder().decode(ResponseGroot.self, from: data)
            return .success(response)
        } catch {
            return .failure(.defaultError)
        }
    }

    static func postAPI(text: String) async {

        var urlRequest = URLRequest(url: URL(string: "https://api.funtranslations.com/translate/groot")!)
        urlRequest.httpMethod = "POST"
//        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]

        do {
            urlRequest.httpBody = try JSONEncoder().encode(PostGroot(text: text))
            let (_, response) = try await URLSession.shared.data(for: urlRequest)
            if let responseHead = response as? HTTPURLResponse {
                print(responseHead.statusCode == 200)
            }
        } catch {
            print(error)
        }
    }

    static func getCompletion(completion: @escaping (ResponseGroot) -> ()){

        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.funtranslations.com"
        components.path = "/translate/groot"
        components.queryItems = [URLQueryItem(name: "text", value: "")]

        let url = components.url!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]

        let task = URLSession.shared.dataTask(with: urlRequest) {(data, response, error) in
            guard let responseData = data else { return }
            do {
                let groot = try JSONDecoder().decode(ResponseGroot.self, from: responseData)
                completion(groot)
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
}
