

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ParentViews
        Used By: Order
    */

    class ParentViews: Codable {
        
        
        public var views: [ViewDetails]
        
        public var slug: String
        
        public var label: String
        
        public var isEditable: Bool
        
        public var position: Int?
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case views = "views"
            
            case slug = "slug"
            
            case label = "label"
            
            case isEditable = "is_editable"
            
            case position = "position"
            
            case showIn = "show_in"
            
        }

        public init(isEditable: Bool, label: String, position: Int? = nil, showIn: String, slug: String, views: [ViewDetails]) {
            
            self.views = views
            
            self.slug = slug
            
            self.label = label
            
            self.isEditable = isEditable
            
            self.position = position
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                views = try container.decode([ViewDetails].self, forKey: .views)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                isEditable = try container.decode(Bool.self, forKey: .isEditable)
                
            
            
            
                do {
                    position = try container.decode(Int.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(views, forKey: .views)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(isEditable, forKey: .isEditable)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ParentViews
        Used By: Order
    */

    class ParentViews: Codable {
        
        
        public var views: [ViewDetails]
        
        public var slug: String
        
        public var label: String
        
        public var isEditable: Bool
        
        public var position: Int?
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case views = "views"
            
            case slug = "slug"
            
            case label = "label"
            
            case isEditable = "is_editable"
            
            case position = "position"
            
            case showIn = "show_in"
            
        }

        public init(isEditable: Bool, label: String, position: Int? = nil, showIn: String, slug: String, views: [ViewDetails]) {
            
            self.views = views
            
            self.slug = slug
            
            self.label = label
            
            self.isEditable = isEditable
            
            self.position = position
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                views = try container.decode([ViewDetails].self, forKey: .views)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                isEditable = try container.decode(Bool.self, forKey: .isEditable)
                
            
            
            
                do {
                    position = try container.decode(Int.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(views, forKey: .views)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(isEditable, forKey: .isEditable)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}


