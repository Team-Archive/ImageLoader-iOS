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
  private var capInsets: EdgeInsets = EdgeInsets()
  private var resizingMode: Image.ResizingMode = .stretch
  private var renderingMode: Image.TemplateRenderingMode?
  
  public var body: some View {
    KFImage(self.imageUrl)
      .resizable(capInsets: capInsets, resizingMode: resizingMode)
      .renderingMode(renderingMode)
  }
  
  public init(_ url: URL?) {
    self.imageUrl = url
  }
  
}

extension ArchiveImage {
  public func resizable(
    capInsets: EdgeInsets = EdgeInsets(),
    resizingMode: Image.ResizingMode = .stretch
  ) -> ArchiveImage {
    var newImage = self
    newImage.capInsets = capInsets
    newImage.resizingMode = resizingMode
    return newImage
  }
  
  public func renderingMode(_ renderingMode: Image.TemplateRenderingMode?) -> ArchiveImage {
    var newImage = self
    newImage.renderingMode = renderingMode
    return newImage
  }
}
