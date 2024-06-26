

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: Page
        Used By: Theme
    */
    class Page: Codable {
        
        public var sections: [Section]?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sections = "sections"
            
            case value = "value"
            
        }

        public init(sections: [Section]? = nil, value: String? = nil) {
            
            self.sections = sections
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sections = try container.decode([Section].self, forKey: .sections)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                value = try container.decode(String.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}
