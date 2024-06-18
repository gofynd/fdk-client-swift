

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocationRule
        Used By: Serviceability
    */

    class LocationRule: Codable {
        
        
        public var type: String?
        
        public var includes: [LocationRuleValues]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case includes = "includes"
            
        }

        public init(includes: [LocationRuleValues]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.includes = includes
            
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
                    includes = try container.decode([LocationRuleValues].self, forKey: .includes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(includes, forKey: .includes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocationRule
        Used By: Serviceability
    */

    class LocationRule: Codable {
        
        
        public var type: String?
        
        public var includes: [LocationRuleValues]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case includes = "includes"
            
        }

        public init(includes: [LocationRuleValues]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.includes = includes
            
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
                    includes = try container.decode([LocationRuleValues].self, forKey: .includes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(includes, forKey: .includes)
            
            
        }
        
    }
}


