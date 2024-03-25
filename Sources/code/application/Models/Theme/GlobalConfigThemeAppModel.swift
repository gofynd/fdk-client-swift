

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: GlobalConfig
        Used By: Theme
    */
    class GlobalConfig: Codable {
        
        public var custom: CustomConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case custom = "custom"
            
        }

        public init(custom: CustomConfig? = nil) {
            
            self.custom = custom
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                custom = try container.decode(CustomConfig.self, forKey: .custom)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(custom, forKey: .custom)
            
            
        }
        
    }
}
