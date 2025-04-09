

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: DeleteAddressResult
        Used By: Cart
    */
    class DeleteAddressResult: Codable {
        
        public var id: String?
        
        public var isDeleted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case isDeleted = "is_deleted"
            
        }

        public init(id: String? = nil, isDeleted: Bool? = nil) {
            
            self.id = id
            
            self.isDeleted = isDeleted
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
        }
        
    }
}
