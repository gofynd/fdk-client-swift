

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: EntityRegionView_Response
        Used By: Serviceability
    */

    class EntityRegionView_Response: Codable {
        
        
        public var error: EntityRegionView_Error
        
        public var page: EntityRegionView_page
        
        public var items: [EntityRegionView_Items]?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case page = "page"
            
            case items = "items"
            
            case success = "success"
            
        }

        public init(error: EntityRegionView_Error, items: [EntityRegionView_Items]? = nil, page: EntityRegionView_page, success: Bool) {
            
            self.error = error
            
            self.page = page
            
            self.items = items
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode(EntityRegionView_Error.self, forKey: .error)
                
            
            
            
                page = try container.decode(EntityRegionView_page.self, forKey: .page)
                
            
            
            
                do {
                    items = try container.decode([EntityRegionView_Items].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: EntityRegionView_Response
        Used By: Serviceability
    */

    class EntityRegionView_Response: Codable {
        
        
        public var error: EntityRegionView_Error
        
        public var page: EntityRegionView_page
        
        public var items: [EntityRegionView_Items]?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case page = "page"
            
            case items = "items"
            
            case success = "success"
            
        }

        public init(error: EntityRegionView_Error, items: [EntityRegionView_Items]? = nil, page: EntityRegionView_page, success: Bool) {
            
            self.error = error
            
            self.page = page
            
            self.items = items
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode(EntityRegionView_Error.self, forKey: .error)
                
            
            
            
                page = try container.decode(EntityRegionView_page.self, forKey: .page)
                
            
            
            
                do {
                    items = try container.decode([EntityRegionView_Items].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


