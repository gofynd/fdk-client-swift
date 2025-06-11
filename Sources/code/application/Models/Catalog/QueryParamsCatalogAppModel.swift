

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: QueryParams
        Used By: Catalog
    */
    class QueryParams: Codable {
        
        public var category: [String]?
        
        public var brand: [String]?
        
        public var department: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
            case brand = "brand"
            
            case department = "department"
            
        }

        public init(brand: [String]? = nil, category: [String]? = nil, department: [String]? = nil) {
            
            self.category = category
            
            self.brand = brand
            
            self.department = department
            
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
                brand = try container.decode([String].self, forKey: .brand)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
        }
        
    }
}
