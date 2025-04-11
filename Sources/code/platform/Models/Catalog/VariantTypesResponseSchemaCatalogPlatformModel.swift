

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: VariantTypesResponseSchema
        Used By: Catalog
    */

    class VariantTypesResponseSchema: Codable {
        
        
        public var items: [VariantTypeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [VariantTypeItem]? = nil) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([VariantTypeItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: VariantTypesResponseSchema
        Used By: Catalog
    */

    class VariantTypesResponseSchema: Codable {
        
        
        public var items: [VariantTypeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [VariantTypeItem]? = nil) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([VariantTypeItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


