

import Foundation
public extension PlatformClient {
    /*
        Model: CatalogInsightItem
        Used By: Catalog
    */

    class CatalogInsightItem: Codable {
        
        
        public var outOfStockCount: Int?
        
        public var sellableCount: Int?
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case outOfStockCount = "out_of_stock_count"
            
            case sellableCount = "sellable_count"
            
            case count = "count"
            
        }

        public init(count: Int? = nil, outOfStockCount: Int? = nil, sellableCount: Int? = nil) {
            
            self.outOfStockCount = outOfStockCount
            
            self.sellableCount = sellableCount
            
            self.count = count
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    outOfStockCount = try container.decode(Int.self, forKey: .outOfStockCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellableCount = try container.decode(Int.self, forKey: .sellableCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(outOfStockCount, forKey: .outOfStockCount)
            
            
            
            
            try? container.encodeIfPresent(sellableCount, forKey: .sellableCount)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
}
