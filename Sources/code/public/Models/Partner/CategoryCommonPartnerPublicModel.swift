

import Foundation
public extension PublicClient.Partner {
    /*
        Model: CategoryCommon
        Used By: Partner
    */

    class CategoryCommon: Codable {
        
        
        public var categoriesL1: [CategoryL1]?
        
        public var categoriesL2: [CategoryL2]?
        

        public enum CodingKeys: String, CodingKey {
            
            case categoriesL1 = "categories_l1"
            
            case categoriesL2 = "categories_l2"
            
        }

        public init(categoriesL1: [CategoryL1]? = nil, categoriesL2: [CategoryL2]? = nil) {
            
            self.categoriesL1 = categoriesL1
            
            self.categoriesL2 = categoriesL2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    categoriesL1 = try container.decode([CategoryL1].self, forKey: .categoriesL1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoriesL2 = try container.decode([CategoryL2].self, forKey: .categoriesL2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(categoriesL1, forKey: .categoriesL1)
            
            
            
            try? container.encodeIfPresent(categoriesL2, forKey: .categoriesL2)
            
            
        }
        
    }
}
