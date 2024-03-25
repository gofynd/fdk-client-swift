

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ActionProperties
        Used By: Catalog
    */

    class ActionProperties: Codable {
        
        
        public var category: [String]?
        
        public var department: [String]?
        
        public var collection: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
            case department = "department"
            
            case collection = "collection"
            
        }

        public init(category: [String]? = nil, collection: [String]? = nil, department: [String]? = nil) {
            
            self.category = category
            
            self.department = department
            
            self.collection = collection
            
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
                
            
            
                do {
                    department = try container.decode([String].self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collection = try container.decode([String].self, forKey: .collection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ActionProperties
        Used By: Catalog
    */

    class ActionProperties: Codable {
        
        
        public var category: [String]?
        
        public var department: [String]?
        
        public var collection: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
            case department = "department"
            
            case collection = "collection"
            
        }

        public init(category: [String]? = nil, collection: [String]? = nil, department: [String]? = nil) {
            
            self.category = category
            
            self.department = department
            
            self.collection = collection
            
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
                
            
            
                do {
                    department = try container.decode([String].self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collection = try container.decode([String].self, forKey: .collection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
        }
        
    }
}


