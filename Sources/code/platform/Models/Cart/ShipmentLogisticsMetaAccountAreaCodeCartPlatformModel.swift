

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ShipmentLogisticsMetaAccountAreaCode
        Used By: Cart
    */

    class ShipmentLogisticsMetaAccountAreaCode: Codable {
        
        
        public var fromPincode: String?
        
        public var toPincode: String?
        
        public var source: String?
        
        public var destination: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromPincode = "from_pincode"
            
            case toPincode = "to_pincode"
            
            case source = "source"
            
            case destination = "destination"
            
        }

        public init(destination: String? = nil, fromPincode: String? = nil, source: String? = nil, toPincode: String? = nil) {
            
            self.fromPincode = fromPincode
            
            self.toPincode = toPincode
            
            self.source = source
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fromPincode = try container.decode(String.self, forKey: .fromPincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toPincode = try container.decode(String.self, forKey: .toPincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    destination = try container.decode(String.self, forKey: .destination)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)
            
            
            
            
            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}


