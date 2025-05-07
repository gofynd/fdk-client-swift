

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DeleteAddressResponseObject
        Used By: Cart
    */

    class DeleteAddressResponseObject: Codable {
        
        
        public var id: String?
        
        public var isDeleted: Bool?
        
        public var addressId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case isDeleted = "is_deleted"
            
            case addressId = "address_id"
            
        }

        public init(addressId: String? = nil, id: String? = nil, isDeleted: Bool? = nil) {
            
            self.id = id
            
            self.isDeleted = isDeleted
            
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
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            
        }
        
    }
}


