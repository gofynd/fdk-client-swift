

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PageQuery
        Used By: Catalog
    */

    class PageQuery: Codable {
        
        
        public var brand: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
        }

        public init(brand: [String]? = nil) {
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode([String].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PageQuery
        Used By: Catalog
    */

    class PageQuery: Codable {
        
        
        public var brand: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
        }

        public init(brand: [String]? = nil) {
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode([String].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}


