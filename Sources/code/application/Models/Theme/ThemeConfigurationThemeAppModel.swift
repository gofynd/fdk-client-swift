

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: ThemeConfiguration
        Used By: Theme
    */
    class ThemeConfiguration: Codable {
        
        public var name: String?
        
        public var globalConfig: [String: Any]?
        
        public var page: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case globalConfig = "global_config"
            
            case page = "page"
            
        }

        public init(globalConfig: [String: Any]? = nil, name: String? = nil, page: [String]? = nil) {
            
            self.name = name
            
            self.globalConfig = globalConfig
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                globalConfig = try container.decode([String: Any].self, forKey: .globalConfig)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                page = try container.decode([String].self, forKey: .page)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(globalConfig, forKey: .globalConfig)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
