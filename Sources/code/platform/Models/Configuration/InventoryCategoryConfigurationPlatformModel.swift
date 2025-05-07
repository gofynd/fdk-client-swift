

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: InventoryCategory
        Used By: Configuration
    */

    class InventoryCategory: Codable {
        
        
        public var criteria: String?
        
        public var categories: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case criteria = "criteria"
            
            case categories = "categories"
            
        }

        public init(categories: [Int]? = nil, criteria: String? = nil) {
            
            self.criteria = criteria
            
            self.categories = categories
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    criteria = try container.decode(String.self, forKey: .criteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categories = try container.decode([Int].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(criteria, forKey: .criteria)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: InventoryCategory
        Used By: Configuration
    */

    class InventoryCategory: Codable {
        
        
        public var criteria: String?
        
        public var categories: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case criteria = "criteria"
            
            case categories = "categories"
            
        }

        public init(categories: [Int]? = nil, criteria: String? = nil) {
            
            self.criteria = criteria
            
            self.categories = categories
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    criteria = try container.decode(String.self, forKey: .criteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categories = try container.decode([Int].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(criteria, forKey: .criteria)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
        }
        
    }
}


