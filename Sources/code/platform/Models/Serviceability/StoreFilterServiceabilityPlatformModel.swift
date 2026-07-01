

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreFilter
        Used By: Serviceability
    */

    class StoreFilter: Codable {
        
        
        public var type: String?
        
        public var ids: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case ids = "ids"
            
        }

        public init(ids: [Int]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.ids = ids
            
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
                    ids = try container.decode([Int].self, forKey: .ids)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(ids, forKey: .ids)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreFilter
        Used By: Serviceability
    */

    class StoreFilter: Codable {
        
        
        public var type: String?
        
        public var ids: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case ids = "ids"
            
        }

        public init(ids: [Int]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.ids = ids
            
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
                    ids = try container.decode([Int].self, forKey: .ids)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(ids, forKey: .ids)
            
            
        }
        
    }
}


