//
//  FruitModel.swift
//  Fructus
//
//  Created by Marcel Felipe Gottardi Anesi on 22/03/24.
//

import SwiftUI

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String] 
}
