//
//  ArchiveImage.swift
//  Sample
//
//  Created by hanwe on 1/21/24.
//  Copyright © 2024 Archive. All rights reserved.
//

import SwiftUI
import Combine
import Kingfisher

public struct ArchiveImage: View {
  
  public let imageUrl: URL?
  
  public var body: some View {
    ZStack {
      KFImage(self.imageUrl)
    }
  }
  
  public init(_ url: URL?) {
    self.imageUrl = url
  }
  
}
