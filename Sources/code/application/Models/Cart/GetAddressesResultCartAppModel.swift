

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: GetAddressesResult
        Used By: Cart
    */
    class GetAddressesResult: Codable {
        
        public var piiMasking: Bool?
        
        public var address: [Address]?
        
        public var validationConfig: ValidationConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case piiMasking = "pii_masking"
            
            case address = "address"
            
            case validationConfig = "validation_config"
            
        }

        public init(address: [Address]? = nil, piiMasking: Bool? = nil, validationConfig: ValidationConfig? = nil) {
            
            self.piiMasking = piiMasking
            
            self.address = address
            
            self.validationConfig = validationConfig
            
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
            
            
            
            do {
                validationConfig = try container.decode(ValidationConfig.self, forKey: .validationConfig)
            
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
            
            
            
            try? container.encodeIfPresent(validationConfig, forKey: .validationConfig)
            
            
        }
        
    }
}
