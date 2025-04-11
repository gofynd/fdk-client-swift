

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FailedOrderLogs
        Used By: Order
    */

    class FailedOrderLogs: Codable {
        
        
        public var items: [FailedOrdersItem]
        
        public var page: PageDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [FailedOrdersItem], page: PageDetails) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([FailedOrdersItem].self, forKey: .items)
                
            
            
            
                page = try container.decode(PageDetails.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FailedOrderLogs
        Used By: Order
    */

    class FailedOrderLogs: Codable {
        
        
        public var items: [FailedOrdersItem]
        
        public var page: PageDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [FailedOrdersItem], page: PageDetails) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([FailedOrdersItem].self, forKey: .items)
                
            
            
            
                page = try container.decode(PageDetails.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


