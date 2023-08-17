

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Charges
        Used By: Cart
    */

    class Charges: Codable {
        
        
        public var charges: Int?
        
        public var threshold: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case charges = "charges"
            
            case threshold = "threshold"
            
        }

        public init(charges: Int? = nil, threshold: Int? = nil) {
            
            self.charges = charges
            
            self.threshold = threshold
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    charges = try container.decode(Int.self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    threshold = try container.decode(Int.self, forKey: .threshold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(threshold, forKey: .threshold)
            
            
        }
        
    }
}


