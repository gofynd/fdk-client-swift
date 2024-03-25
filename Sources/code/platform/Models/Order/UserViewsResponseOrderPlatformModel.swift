

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UserViewsResponse
        Used By: Order
    */

    class UserViewsResponse: Codable {
        
        
        public var parentViews: [ParentViews]?
        

        public enum CodingKeys: String, CodingKey {
            
            case parentViews = "parent_views"
            
        }

        public init(parentViews: [ParentViews]? = nil) {
            
            self.parentViews = parentViews
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    parentViews = try container.decode([ParentViews].self, forKey: .parentViews)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(parentViews, forKey: .parentViews)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UserViewsResponse
        Used By: Order
    */

    class UserViewsResponse: Codable {
        
        
        public var parentViews: [ParentViews]?
        

        public enum CodingKeys: String, CodingKey {
            
            case parentViews = "parent_views"
            
        }

        public init(parentViews: [ParentViews]? = nil) {
            
            self.parentViews = parentViews
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    parentViews = try container.decode([ParentViews].self, forKey: .parentViews)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(parentViews, forKey: .parentViews)
            
            
        }
        
    }
}


