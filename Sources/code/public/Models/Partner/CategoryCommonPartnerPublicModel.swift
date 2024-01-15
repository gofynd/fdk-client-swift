

import Foundation
public extension PublicClient.Partner {
    /*
        Model: CategoryCommon
        Used By: Partner
    */

    class CategoryCommon: Codable {
        
        
        public var categoryL1: [CategoryL1]?
        
        public var categoryL2: [CategoryL2]?
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryL1 = "category_l1"
            
            case categoryL2 = "category_l2"
            
        }

        public init(categoryL1: [CategoryL1]? = nil, categoryL2: [CategoryL2]? = nil) {
            
            self.categoryL1 = categoryL1
            
            self.categoryL2 = categoryL2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    categoryL1 = try container.decode([CategoryL1].self, forKey: .categoryL1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL2 = try container.decode([CategoryL2].self, forKey: .categoryL2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(categoryL1, forKey: .categoryL1)
            
            
            
            try? container.encodeIfPresent(categoryL2, forKey: .categoryL2)
            
            
        }
        
    }
}
