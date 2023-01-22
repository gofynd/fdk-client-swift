

import Foundation
public extension PlatformClient {
    /*
        Model: Trader
        Used By: Catalog
    */

    class Trader: Codable {
        
        
        public var type: String?
        
        public var address: [String]?
        
        public var name: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case address = "address"
            
            case name = "name"
            
        }

        public init(address: [String]? = nil, name: [String: Any], type: String? = nil) {
            
            self.type = type
            
            self.address = address
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode([String].self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode([String: Any].self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
