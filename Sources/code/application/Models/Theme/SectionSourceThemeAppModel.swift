

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SectionSource
        Used By: Theme
    */
    class SectionSource: Codable {
        
        public var id: String?
        
        public var bundleName: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case bundleName = "bundle_name"
            
            case type = "type"
            
        }

        public init(bundleName: String? = nil, id: String? = nil, type: String? = nil) {
            
            self.id = id
            
            self.bundleName = bundleName
            
            self.type = type
            
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
                bundleName = try container.decode(String.self, forKey: .bundleName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(bundleName, forKey: .bundleName)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
