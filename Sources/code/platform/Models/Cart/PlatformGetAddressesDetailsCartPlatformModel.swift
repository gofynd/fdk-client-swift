

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformGetAddressesDetails
        Used By: Cart
    */

    class PlatformGetAddressesDetails: Codable {
        
        
        public var address: [PlatformAddress]?
        
        public var validationConfig: ValidationConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case validationConfig = "validation_config"
            
        }

        public init(address: [PlatformAddress]? = nil, validationConfig: ValidationConfig? = nil) {
            
            self.address = address
            
            self.validationConfig = validationConfig
            
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
                    validationConfig = try container.decode(ValidationConfig.self, forKey: .validationConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(validationConfig, forKey: .validationConfig)
            
            
        }
        
    }
}


