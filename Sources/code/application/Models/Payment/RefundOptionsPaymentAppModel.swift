

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundOptions
        Used By: Payment
    */
    class RefundOptions: Codable {
        
        public var items: RefundOptionsDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: RefundOptionsDetails) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            items = try container.decode(RefundOptionsDetails.self, forKey: .items)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
