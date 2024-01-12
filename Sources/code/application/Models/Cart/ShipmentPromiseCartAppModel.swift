

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ShipmentPromise
        Used By: Cart
    */
    class ShipmentPromise: Codable {
        
        public var formatted: PromiseFormatted?
        
        public var timestamp: PromiseTimestamp?
        
        public var iso: PromiseISOFormat?
        

        public enum CodingKeys: String, CodingKey {
            
            case formatted = "formatted"
            
            case timestamp = "timestamp"
            
            case iso = "iso"
            
        }

        public init(formatted: PromiseFormatted? = nil, iso: PromiseISOFormat? = nil, timestamp: PromiseTimestamp? = nil) {
            
            self.formatted = formatted
            
            self.timestamp = timestamp
            
            self.iso = iso
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                iso = try container.decode(PromiseISOFormat.self, forKey: .iso)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(formatted, forKey: .formatted)
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
            
            try? container.encodeIfPresent(iso, forKey: .iso)
            
            
        }
        
    }
}
