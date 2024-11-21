

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizeSellersResponseV3
        Used By: Catalog
    */
    class ProductSizeSellersResponseV3: Codable {
        
        public var items: [ProductSellersPriceResponseV3]?
        
        public var page: Page
        
        public var sortOn: [ProductSizeSellerFilterSchemaV3]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case sortOn = "sort_on"
            
        }

        public init(items: [ProductSellersPriceResponseV3]? = nil, page: Page, sortOn: [ProductSizeSellerFilterSchemaV3]? = nil) {
            
            self.items = items
            
            self.page = page
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([ProductSellersPriceResponseV3].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            page = try container.decode(Page.self, forKey: .page)
            
            
            
            
            do {
                sortOn = try container.decode([ProductSizeSellerFilterSchemaV3].self, forKey: .sortOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}
