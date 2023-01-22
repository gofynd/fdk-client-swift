

import Foundation
public extension PlatformClient {
    /*
        Model: CatalogInsightResponse
        Used By: Catalog
    */

    class CatalogInsightResponse: Codable {
        
        
        public var item: CatalogInsightItem?
        
        public var brandDistribution: CatalogInsightBrand?
        

        public enum CodingKeys: String, CodingKey {
            
            case item = "item"
            
            case brandDistribution = "brand_distribution"
            
        }

        public init(brandDistribution: CatalogInsightBrand? = nil, item: CatalogInsightItem? = nil) {
            
            self.item = item
            
            self.brandDistribution = brandDistribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    item = try container.decode(CatalogInsightItem.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandDistribution = try container.decode(CatalogInsightBrand.self, forKey: .brandDistribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(brandDistribution, forKey: .brandDistribution)
            
            
        }
        
    }
}
