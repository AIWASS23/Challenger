//
//  GrootViewModel.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 19/10/22.
//

 import Foundation
 import UIKit

class GrootViewModel: ObservableObject {

    @Published var groots: [ResponseGroot] = []

    @MainActor
    func publishGroots(groots: [ResponseGroot]) {
        self.groots = groots
    }

    func fetchGroots(text: String) async {
        let text = PostGroot(text: text)
        let result = await API.getAPI(text: text)
        switch result {
        case .success(let response):
            await publishGroots(groots: [response])
        case .failure(_):
            return
        }

    }
 }
