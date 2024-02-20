

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ParentViews
        Used By: Order
    */

    class ParentViews: Codable {
        
        
        public var views: [ViewDetails]?
        
        public var parentSlug: String?
        
        public var parentText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case views = "views"
            
            case parentSlug = "parent_slug"
            
            case parentText = "parent_text"
            
        }

        public init(parentSlug: String? = nil, parentText: String? = nil, views: [ViewDetails]? = nil) {
            
            self.views = views
            
            self.parentSlug = parentSlug
            
            self.parentText = parentText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    views = try container.decode([ViewDetails].self, forKey: .views)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentSlug = try container.decode(String.self, forKey: .parentSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentText = try container.decode(String.self, forKey: .parentText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(views, forKey: .views)
            
            
            
            
            try? container.encodeIfPresent(parentSlug, forKey: .parentSlug)
            
            
            
            
            try? container.encodeIfPresent(parentText, forKey: .parentText)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ParentViews
        Used By: Order
    */

    class ParentViews: Codable {
        
        
        public var views: [ViewDetails]?
        
        public var parentSlug: String?
        
        public var parentText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case views = "views"
            
            case parentSlug = "parent_slug"
            
            case parentText = "parent_text"
            
        }

        public init(parentSlug: String? = nil, parentText: String? = nil, views: [ViewDetails]? = nil) {
            
            self.views = views
            
            self.parentSlug = parentSlug
            
            self.parentText = parentText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    views = try container.decode([ViewDetails].self, forKey: .views)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentSlug = try container.decode(String.self, forKey: .parentSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentText = try container.decode(String.self, forKey: .parentText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(views, forKey: .views)
            
            
            
            
            try? container.encodeIfPresent(parentSlug, forKey: .parentSlug)
            
            
            
            
            try? container.encodeIfPresent(parentText, forKey: .parentText)
            
            
        }
        
    }
}


