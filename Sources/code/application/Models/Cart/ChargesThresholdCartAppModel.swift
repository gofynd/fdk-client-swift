

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ChargesThreshold
        Used By: Cart
    */
    class ChargesThreshold: Codable {
        
        public var charges: Double?
        
        public var threshold: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case charges = "charges"
            
            case threshold = "threshold"
            
        }

        public init(charges: Double? = nil, threshold: Double? = nil) {
            
            self.charges = charges
            
            self.threshold = threshold
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                charges = try container.decode(Double.self, forKey: .charges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                threshold = try container.decode(Double.self, forKey: .threshold)
            
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
