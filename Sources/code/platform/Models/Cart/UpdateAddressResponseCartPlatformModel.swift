

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UpdateAddressResponse
        Used By: Cart
    */

    class UpdateAddressResponse: Codable {
        
        
        public var id: String?
        
        public var isDefaultAddress: Bool?
        
        public var success: Bool?
        
        public var isUpdated: Bool?
        
        public var addressId: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case isDefaultAddress = "is_default_address"
            
            case success = "success"
            
            case isUpdated = "is_updated"
            
            case addressId = "address_id"
            
        }

        public init(addressId: [String: Any]? = nil, id: String? = nil, isDefaultAddress: Bool? = nil, isUpdated: Bool? = nil, success: Bool? = nil) {
            
            self.id = id
            
            self.isDefaultAddress = isDefaultAddress
            
            self.success = success
            
            self.isUpdated = isUpdated
            
            self.addressId = addressId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isUpdated = try container.decode(Bool.self, forKey: .isUpdated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressId = try container.decode([String: Any].self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
            
            
            
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            
        }
        
    }
}


