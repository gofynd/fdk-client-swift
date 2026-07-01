

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ApplyOfferSchema
        Used By: Cart
    */
    class ApplyOfferSchema: Codable {
        
        public var offerCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case offerCode = "offer_code"
            
        }

        public init(offerCode: String) {
            
            self.offerCode = offerCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            offerCode = try container.decode(String.self, forKey: .offerCode)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(offerCode, forKey: .offerCode)
            
            
        }
        
    }
}
