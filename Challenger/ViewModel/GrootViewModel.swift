//
//  GrootViewModel.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 19/10/22.
//

// import Foundation
// import UIKit

// class GrootViewModel: ObservableObject {
//
//    @Published var groot: [ResponseGroot] = []
//    @Published var text: [PostGroot] = []
//
//    @MainActor
//    func publishGroot(groots: [ResponseGroot]) {
//        self.groot = groots
//    }
//
//    func allFetchGroot() async {
//        let allResponseGroot = await fetchGroot()
//        await publishGroot(groots: allResponseGroot)
//    }
//
//    func fetchGroot() async -> [ResponseGroot] {
//        await API.getAPI(text: text[0])
//    }
//
//    func addTranslateGroot(textTranslate: String) async {
//        await API.postAPI(text: textTranslate)
//    }
// }
