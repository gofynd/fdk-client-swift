

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryConfig
        Used By: Catalog
    */

    class InventoryConfig: Codable {
        
        
        public var data: [FilerList]?
        
        public var multivalue: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case multivalue = "multivalue"
            
        }

        public init(data: [FilerList]? = nil, multivalue: Bool? = nil) {
            
            self.data = data
            
            self.multivalue = multivalue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([FilerList].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multivalue = try container.decode(Bool.self, forKey: .multivalue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(multivalue, forKey: .multivalue)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryConfig
        Used By: Catalog
    */

    class InventoryConfig: Codable {
        
        
        public var data: [FilerList]?
        
        public var multivalue: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case multivalue = "multivalue"
            
        }

        public init(data: [FilerList]? = nil, multivalue: Bool? = nil) {
            
            self.data = data
            
            self.multivalue = multivalue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([FilerList].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multivalue = try container.decode(Bool.self, forKey: .multivalue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(multivalue, forKey: .multivalue)
            
            
        }
        
    }
}


