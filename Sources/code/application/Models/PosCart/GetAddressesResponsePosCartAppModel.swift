

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: GetAddressesResponse
        Used By: PosCart
    */
    class GetAddressesResponse: Codable {
        
        public var piiMasking: Bool?
        
        public var address: [Address]?
        

        public enum CodingKeys: String, CodingKey {
            
            case piiMasking = "pii_masking"
            
            case address = "address"
            
        }

        public init(address: [Address]? = nil, piiMasking: Bool? = nil) {
            
            self.piiMasking = piiMasking
            
            self.address = address
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                piiMasking = try container.decode(Bool.self, forKey: .piiMasking)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode([Address].self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(piiMasking, forKey: .piiMasking)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
}
