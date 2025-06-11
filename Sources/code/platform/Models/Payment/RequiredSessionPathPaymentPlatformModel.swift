

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RequiredSessionPath
        Used By: Payment
    */

    class RequiredSessionPath: Codable {
        
        
        public var version: String?
        
        public var paths: [SessionItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case version = "version"
            
            case paths = "paths"
            
        }

        public init(paths: [SessionItem]? = nil, version: String? = nil) {
            
            self.version = version
            
            self.paths = paths
            
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
                
            
            
                do {
                    paths = try container.decode([SessionItem].self, forKey: .paths)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(paths, forKey: .paths)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RequiredSessionPath
        Used By: Payment
    */

    class RequiredSessionPath: Codable {
        
        
        public var version: String?
        
        public var paths: [SessionItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case version = "version"
            
            case paths = "paths"
            
        }

        public init(paths: [SessionItem]? = nil, version: String? = nil) {
            
            self.version = version
            
            self.paths = paths
            
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
                
            
            
                do {
                    paths = try container.decode([SessionItem].self, forKey: .paths)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(paths, forKey: .paths)
            
            
        }
        
    }
}


