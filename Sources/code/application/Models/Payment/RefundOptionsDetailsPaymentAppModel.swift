

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundOptionsDetails
        Used By: Payment
    */
    class RefundOptionsDetails: Codable {
        
        public var displayName: String
        
        public var id: Int
        
        public var isActive: Bool?
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case id = "id"
            
            case isActive = "is_active"
            
            case name = "name"
            
        }

        public init(displayName: String, id: Int, isActive: Bool? = nil, name: String) {
            
            self.displayName = displayName
            
            self.id = id
            
            self.isActive = isActive
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            id = try container.decode(Int.self, forKey: .id)
            
            
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
