

import Foundation
public extension PublicClient.Configuration {
    /*
        Model: VersionApplication
        Used By: Configuration
    */

    class VersionApplication: Codable {
        
        
        public var name: String?
        
        public var version: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case version = "version"
            
        }

        public init(name: String? = nil, version: String? = nil) {
            
            self.name = name
            
            self.version = version
            
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
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
}
