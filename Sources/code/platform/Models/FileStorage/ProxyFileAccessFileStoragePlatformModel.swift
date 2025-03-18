

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: ProxyFileAccess
        Used By: FileStorage
    */

    class ProxyFileAccess: Codable {
        
        
        public var data: [String: Any]?
        
        public var support: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case support = "support"
            
        }

        public init(data: [String: Any]? = nil, support: [String: Any]? = nil) {
            
            self.data = data
            
            self.support = support
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    support = try container.decode([String: Any].self, forKey: .support)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(support, forKey: .support)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: ProxyFileAccess
        Used By: FileStorage
    */

    class ProxyFileAccess: Codable {
        
        
        public var data: [String: Any]?
        
        public var support: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case support = "support"
            
        }

        public init(data: [String: Any]? = nil, support: [String: Any]? = nil) {
            
            self.data = data
            
            self.support = support
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    support = try container.decode([String: Any].self, forKey: .support)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(support, forKey: .support)
            
            
        }
        
    }
}


