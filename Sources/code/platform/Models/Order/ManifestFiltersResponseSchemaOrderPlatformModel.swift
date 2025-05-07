

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestFiltersResponseSchema
        Used By: Order
    */

    class ManifestFiltersResponseSchema: Codable {
        
        
        public var advance: [FiltersInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
        }

        public init(advance: [FiltersInfo]? = nil) {
            
            self.advance = advance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advance = try container.decode([FiltersInfo].self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestFiltersResponseSchema
        Used By: Order
    */

    class ManifestFiltersResponseSchema: Codable {
        
        
        public var advance: [FiltersInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
        }

        public init(advance: [FiltersInfo]? = nil) {
            
            self.advance = advance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advance = try container.decode([FiltersInfo].self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
        }
        
    }
}


