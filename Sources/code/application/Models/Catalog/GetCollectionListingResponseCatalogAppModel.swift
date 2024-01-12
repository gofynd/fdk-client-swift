

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: GetCollectionListingResponse
        Used By: Catalog
    */
    class GetCollectionListingResponse: Codable {
        
        public var items: [GetCollectionDetailNest]?
        
        public var filters: CollectionListingFilter?
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case filters = "filters"
            
            case page = "page"
            
        }

        public init(filters: CollectionListingFilter? = nil, items: [GetCollectionDetailNest]? = nil, page: Page) {
            
            self.items = items
            
            self.filters = filters
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([GetCollectionDetailNest].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                filters = try container.decode(CollectionListingFilter.self, forKey: .filters)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            page = try container.decode(Page.self, forKey: .page)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
