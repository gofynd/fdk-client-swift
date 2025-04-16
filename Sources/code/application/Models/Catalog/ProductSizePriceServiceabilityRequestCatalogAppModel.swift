

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceServiceabilityRequest
        Used By: Catalog
    */
    class ProductSizePriceServiceabilityRequest: Codable {
        
        public var items: [ProductSizePriceServiceabilityItemsRequest]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [ProductSizePriceServiceabilityItemsRequest]? = nil) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([ProductSizePriceServiceabilityItemsRequest].self, forKey: .items)
            
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
