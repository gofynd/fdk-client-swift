

import Foundation
public extension PlatformClient {
    /*
        Model: BulkDiscount
        Used By: Discount
    */

    class BulkDiscount: Codable {
        
        
        public var companyId: Int
        
        public var items: [DiscountItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case items = "items"
            
        }

        public init(companyId: Int, items: [DiscountItems]) {
            
            self.companyId = companyId
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                items = try container.decode([DiscountItems].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
