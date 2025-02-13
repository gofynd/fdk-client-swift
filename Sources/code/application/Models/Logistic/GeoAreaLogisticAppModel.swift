

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GeoArea
        Used By: Logistic
    */
    class GeoArea: Codable {
        
        public var id: String
        
        public var type: String?
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case type = "type"
            
            case name = "name"
            
        }

        public init(id: String, name: String, type: String? = nil) {
            
            self.id = id
            
            self.type = type
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
