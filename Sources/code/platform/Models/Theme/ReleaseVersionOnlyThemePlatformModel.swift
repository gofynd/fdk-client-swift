

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ReleaseVersionOnly
        Used By: Theme
    */

    class ReleaseVersionOnly: Codable {
        
        
        public var version: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case version = "version"
            
        }

        public init(version: String? = nil) {
            
            self.version = version
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ReleaseVersionOnly
        Used By: Theme
    */

    class ReleaseVersionOnly: Codable {
        
        
        public var version: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case version = "version"
            
        }

        public init(version: String? = nil) {
            
            self.version = version
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
}


