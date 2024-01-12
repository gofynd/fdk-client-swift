

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: SaveAddressResponse
        Used By: PosCart
    */
    class SaveAddressResponse: Codable {
        
        public var isDefaultAddress: Bool?
        
        public var success: Bool?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefaultAddress = "is_default_address"
            
            case success = "success"
            
            case id = "id"
            
        }

        public init(id: String? = nil, isDefaultAddress: Bool? = nil, success: Bool? = nil) {
            
            self.isDefaultAddress = isDefaultAddress
            
            self.success = success
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
