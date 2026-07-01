

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UpdateAddressRequestBody
        Used By: Order
    */

    class UpdateAddressRequestBody: Codable {
        
        
        public var updatedAddress: UpdatedAddressSchema?
        
        public var addressType: String?
        
        public var addressCategory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedAddress = "updated_address"
            
            case addressType = "address_type"
            
            case addressCategory = "address_category"
            
        }

        public init(addressCategory: String? = nil, addressType: String? = nil, updatedAddress: UpdatedAddressSchema? = nil) {
            
            self.updatedAddress = updatedAddress
            
            self.addressType = addressType
            
            self.addressCategory = addressCategory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedAddress = try container.decode(UpdatedAddressSchema.self, forKey: .updatedAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedAddress, forKey: .updatedAddress)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UpdateAddressRequestBody
        Used By: Order
    */

    class UpdateAddressRequestBody: Codable {
        
        
        public var updatedAddress: UpdatedAddressSchema?
        
        public var addressType: String?
        
        public var addressCategory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedAddress = "updated_address"
            
            case addressType = "address_type"
            
            case addressCategory = "address_category"
            
        }

        public init(addressCategory: String? = nil, addressType: String? = nil, updatedAddress: UpdatedAddressSchema? = nil) {
            
            self.updatedAddress = updatedAddress
            
            self.addressType = addressType
            
            self.addressCategory = addressCategory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedAddress = try container.decode(UpdatedAddressSchema.self, forKey: .updatedAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedAddress, forKey: .updatedAddress)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
        }
        
    }
}


