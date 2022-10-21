//
//  GrootViewModel.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 19/10/22.
//

 import Foundation
 import UIKit

 class GrootViewModel {

     func groot(url: URL) async {

         do {
             let groots = try await API.getAPI
         } catch {
             print(error)
         }
     }
     
 }
