

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AttributeMasterFilter
        Used By: Catalog
    */

    class AttributeMasterFilter: Codable {
        
        
        public var ddependsOn: [String]?
        
        public var indexing: Bool
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case ddependsOn = "ddepends_on"
            
            case indexing = "indexing"
            
            case priority = "priority"
            
        }

        public init(ddependsOn: [String]? = nil, indexing: Bool, priority: Int? = nil) {
            
            self.ddependsOn = ddependsOn
            
            self.indexing = indexing
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ddependsOn = try container.decode([String].self, forKey: .ddependsOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                indexing = try container.decode(Bool.self, forKey: .indexing)
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ddependsOn, forKey: .ddependsOn)
            
            
            
            
            try? container.encodeIfPresent(indexing, forKey: .indexing)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AttributeMasterFilter
        Used By: Catalog
    */

    class AttributeMasterFilter: Codable {
        
        
        public var ddependsOn: [String]?
        
        public var indexing: Bool
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case ddependsOn = "ddepends_on"
            
            case indexing = "indexing"
            
            case priority = "priority"
            
        }

        public init(ddependsOn: [String]? = nil, indexing: Bool, priority: Int? = nil) {
            
            self.ddependsOn = ddependsOn
            
            self.indexing = indexing
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ddependsOn = try container.decode([String].self, forKey: .ddependsOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                indexing = try container.decode(Bool.self, forKey: .indexing)
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ddependsOn, forKey: .ddependsOn)
            
            
            
            
            try? container.encodeIfPresent(indexing, forKey: .indexing)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}


