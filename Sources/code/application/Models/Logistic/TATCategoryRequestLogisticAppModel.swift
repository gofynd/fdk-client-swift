

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATCategoryRequest
        Used By: Logistic
    */
    class TATCategoryRequest: Codable {
        
        public var level: String?
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case level = "level"
            
            case id = "id"
            
        }

        public init(id: Int? = nil, level: String? = nil) {
            
            self.level = level
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                level = try container.decode(String.self, forKey: .level)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(Int.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
