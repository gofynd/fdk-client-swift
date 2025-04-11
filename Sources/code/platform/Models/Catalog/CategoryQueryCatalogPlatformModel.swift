

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CategoryQuery
        Used By: Catalog
    */

    class CategoryQuery: Codable {
        
        
        public var category: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: [String]? = nil) {
            
            self.category = category
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    category = try container.decode([String].self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CategoryQuery
        Used By: Catalog
    */

    class CategoryQuery: Codable {
        
        
        public var category: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: [String]? = nil) {
            
            self.category = category
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    category = try container.decode([String].self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
        }
        
    }
}


