

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetStoresViewResponse
        Used By: Serviceability
    */

    class GetStoresViewResponse: Codable {
        
        
        public var page: ServiceabilityPageResponse
        
        public var items: [ItemResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [ItemResponse]? = nil, page: ServiceabilityPageResponse) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(ServiceabilityPageResponse.self, forKey: .page)
                
            
            
            
                do {
                    items = try container.decode([ItemResponse].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetStoresViewResponse
        Used By: Serviceability
    */

    class GetStoresViewResponse: Codable {
        
        
        public var page: ServiceabilityPageResponse
        
        public var items: [ItemResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [ItemResponse]? = nil, page: ServiceabilityPageResponse) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(ServiceabilityPageResponse.self, forKey: .page)
                
            
            
            
                do {
                    items = try container.decode([ItemResponse].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


