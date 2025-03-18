

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ActionObject
        Used By: Catalog
    */

    class ActionObject: Codable {
        
        
        public var type: String?
        
        public var query: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case query = "query"
            
        }

        public init(query: [String: Any]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.query = query
            
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
                    query = try container.decode([String: Any].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ActionObject
        Used By: Catalog
    */

    class ActionObject: Codable {
        
        
        public var type: String?
        
        public var query: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case query = "query"
            
        }

        public init(query: [String: Any]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.query = query
            
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
                    query = try container.decode([String: Any].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}


