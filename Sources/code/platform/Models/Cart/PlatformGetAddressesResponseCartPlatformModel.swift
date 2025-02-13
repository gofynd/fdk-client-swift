

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformGetAddressesResponse
        Used By: Cart
    */

    class PlatformGetAddressesResponse: Codable {
        
        
        public var address: [PlatformAddress]?
        
        public var piiMasking: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case piiMasking = "pii_masking"
            
        }

        public init(address: [PlatformAddress]? = nil, piiMasking: Bool? = nil) {
            
            self.address = address
            
            self.piiMasking = piiMasking
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address = try container.decode([PlatformAddress].self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    piiMasking = try container.decode(Bool.self, forKey: .piiMasking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(piiMasking, forKey: .piiMasking)
            
            
        }
        
    }
}


