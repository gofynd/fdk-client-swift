

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: Prop
        Used By: Theme
    */
    class Prop: Codable {
        
        public var type: String?
        
        public var category: String?
        
        public var id: String?
        
        public var label: String?
        
        public var info: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case category = "category"
            
            case id = "id"
            
            case label = "label"
            
            case info = "info"
            
        }

        public init(category: String? = nil, id: String? = nil, info: String? = nil, label: String? = nil, type: String? = nil) {
            
            self.type = type
            
            self.category = category
            
            self.id = id
            
            self.label = label
            
            self.info = info
            
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
                category = try container.decode(String.self, forKey: .category)
            
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
            
            
            
            do {
                label = try container.decode(String.self, forKey: .label)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                info = try container.decode(String.self, forKey: .info)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
        }
        
    }
}
