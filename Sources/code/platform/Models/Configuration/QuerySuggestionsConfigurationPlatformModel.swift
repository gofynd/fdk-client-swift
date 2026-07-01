

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: QuerySuggestions
        Used By: Configuration
    */

    class QuerySuggestions: Codable {
        
        
        public var enabled: Bool?
        
        public var maxLimit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case maxLimit = "max_limit"
            
        }

        public init(enabled: Bool? = nil, maxLimit: Int? = nil) {
            
            self.enabled = enabled
            
            self.maxLimit = maxLimit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxLimit = try container.decode(Int.self, forKey: .maxLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(maxLimit, forKey: .maxLimit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: QuerySuggestions
        Used By: Configuration
    */

    class QuerySuggestions: Codable {
        
        
        public var enabled: Bool?
        
        public var maxLimit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case maxLimit = "max_limit"
            
        }

        public init(enabled: Bool? = nil, maxLimit: Int? = nil) {
            
            self.enabled = enabled
            
            self.maxLimit = maxLimit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxLimit = try container.decode(Int.self, forKey: .maxLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(maxLimit, forKey: .maxLimit)
            
            
        }
        
    }
}


