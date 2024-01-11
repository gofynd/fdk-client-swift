

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceSchema
        Used By: Content
    */

    class ResourceSchema: Codable {
        
        
        public var name: String?
        
        public var key: String?
        
        public var definitionsCount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case key = "key"
            
            case definitionsCount = "definitions_count"
            
        }

        public init(definitionsCount: Double? = nil, key: String? = nil, name: String? = nil) {
            
            self.name = name
            
            self.key = key
            
            self.definitionsCount = definitionsCount
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionsCount = try container.decode(Double.self, forKey: .definitionsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(definitionsCount, forKey: .definitionsCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceSchema
        Used By: Content
    */

    class ResourceSchema: Codable {
        
        
        public var name: String?
        
        public var key: String?
        
        public var definitionsCount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case key = "key"
            
            case definitionsCount = "definitions_count"
            
        }

        public init(definitionsCount: Double? = nil, key: String? = nil, name: String? = nil) {
            
            self.name = name
            
            self.key = key
            
            self.definitionsCount = definitionsCount
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionsCount = try container.decode(Double.self, forKey: .definitionsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(definitionsCount, forKey: .definitionsCount)
            
            
        }
        
    }
}


