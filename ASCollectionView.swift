//
//  ASCollectionView.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-03.
//

import SwiftUI

import Foundation

/// The context passed to your dynamic section initialiser. Use this to change your view content depending on the context (eg. selected)
@available(iOS 13.0, *)
public struct ASCellContext
{
    public var isHighlighted: Bool
    public var isSelected: Bool
    public var index: Int
    public var isFirstInSection: Bool
    public var isLastInSection: Bool
}

struct ASCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ASCollectionView()
    }
}
