

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxComponentResponseSchema
        Used By: Catalog
    */

    class TaxComponentResponseSchema: Codable {
        
        
        public var name: String
        
        public var description: String?
        
        public var slabs: [TaxThreshold]
        
        public var id: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case slabs = "slabs"
            
            case id = "_id"
            
        }

        public init(description: String? = nil, name: String, slabs: [TaxThreshold], id: String) {
            
            self.name = name
            
            self.description = description
            
            self.slabs = slabs
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slabs = try container.decode([TaxThreshold].self, forKey: .slabs)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(slabs, forKey: .slabs)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxComponentResponseSchema
        Used By: Catalog
    */

    class TaxComponentResponseSchema: Codable {
        
        
        public var name: String
        
        public var description: String?
        
        public var slabs: [TaxThreshold]
        
        public var id: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case slabs = "slabs"
            
            case id = "_id"
            
        }

        public init(description: String? = nil, name: String, slabs: [TaxThreshold], id: String) {
            
            self.name = name
            
            self.description = description
            
            self.slabs = slabs
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slabs = try container.decode([TaxThreshold].self, forKey: .slabs)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(slabs, forKey: .slabs)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


