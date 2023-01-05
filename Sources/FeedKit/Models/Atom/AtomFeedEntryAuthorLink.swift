//
//  AtomFeedEntryAuthorLink.swift
//  FeedKit
//
//  Created by Sviatoslav Yakymiv on 05.01.2023.
//

import Foundation

public class AtomFeedEntryAuthorLink {
    public class Attributes {
        public var href: String?
        public var height: Int?
        public var width: Int?
        
        public init(attributes: [String: String]) {
            self.href = attributes["href"]
            self.height = attributes["media:height"].flatMap(Int.init)
            self.width = attributes["media:width"].flatMap(Int.init)
        }
    }
    
    /// The element's attributes.
    public var attributes: Attributes?
    
    public init() { }
    
    public init(attributes: [String: String]) {
        self.attributes = Attributes(attributes: attributes)
    }
}
