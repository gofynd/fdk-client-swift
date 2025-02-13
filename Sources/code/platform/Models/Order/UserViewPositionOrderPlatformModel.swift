

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UserViewPosition
        Used By: Order
    */

    class UserViewPosition: Codable {
        
        
        public var viewType: String
        
        public var viewId: String?
        
        public var slug: String?
        
        public var label: String?
        
        public var newPosition: Int
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case viewType = "view_type"
            
            case viewId = "view_id"
            
            case slug = "slug"
            
            case label = "label"
            
            case newPosition = "new_position"
            
            case showIn = "show_in"
            
        }

        public init(label: String? = nil, newPosition: Int, showIn: String, slug: String? = nil, viewId: String? = nil, viewType: String) {
            
            self.viewType = viewType
            
            self.viewId = viewId
            
            self.slug = slug
            
            self.label = label
            
            self.newPosition = newPosition
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                viewType = try container.decode(String.self, forKey: .viewType)
                
            
            
            
                do {
                    viewId = try container.decode(String.self, forKey: .viewId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    label = try container.decode(String.self, forKey: .label)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                newPosition = try container.decode(Int.self, forKey: .newPosition)
                
            
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(viewType, forKey: .viewType)
            
            
            
            
            try? container.encodeIfPresent(viewId, forKey: .viewId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(newPosition, forKey: .newPosition)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UserViewPosition
        Used By: Order
    */

    class UserViewPosition: Codable {
        
        
        public var viewType: String
        
        public var viewId: String?
        
        public var slug: String?
        
        public var label: String?
        
        public var newPosition: Int
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case viewType = "view_type"
            
            case viewId = "view_id"
            
            case slug = "slug"
            
            case label = "label"
            
            case newPosition = "new_position"
            
            case showIn = "show_in"
            
        }

        public init(label: String? = nil, newPosition: Int, showIn: String, slug: String? = nil, viewId: String? = nil, viewType: String) {
            
            self.viewType = viewType
            
            self.viewId = viewId
            
            self.slug = slug
            
            self.label = label
            
            self.newPosition = newPosition
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                viewType = try container.decode(String.self, forKey: .viewType)
                
            
            
            
                do {
                    viewId = try container.decode(String.self, forKey: .viewId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    label = try container.decode(String.self, forKey: .label)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                newPosition = try container.decode(Int.self, forKey: .newPosition)
                
            
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(viewType, forKey: .viewType)
            
            
            
            
            try? container.encodeIfPresent(viewId, forKey: .viewId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(newPosition, forKey: .newPosition)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}


