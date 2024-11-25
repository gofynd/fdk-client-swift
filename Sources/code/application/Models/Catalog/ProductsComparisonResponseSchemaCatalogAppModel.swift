

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductsComparisonResponseSchema
        Used By: Catalog
    */
    class ProductsComparisonResponseSchema: Codable {
        
        public var items: [ProductCompareDetail]?
        
        public var attributesMetadata: [AttributeMetadata]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case attributesMetadata = "attributes_metadata"
            
        }

        public init(attributesMetadata: [AttributeMetadata]? = nil, items: [ProductCompareDetail]? = nil) {
            
            self.items = items
            
            self.attributesMetadata = attributesMetadata
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([ProductCompareDetail].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
            
            
        }
        
    }
}
