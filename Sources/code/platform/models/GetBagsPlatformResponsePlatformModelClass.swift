

import Foundation
public extension PlatformClient {
    /*
        Model: GetBagsPlatformResponse
        Used By: Order
    */

    class GetBagsPlatformResponse: Codable {
        
        
        public var page: Page1
        
        public var items: [BagDetailsPlatformResponse]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [BagDetailsPlatformResponse], page: Page1) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Page1.self, forKey: .page)
                
            
            
            
                items = try container.decode([BagDetailsPlatformResponse].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
