

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ProductAction
        Used By: Cart
    */
    class ProductAction: Codable {
        
        public var query: ActionQuery?
        
        public var url: String?
        
        public var type: String?
        
        public var page: ProductActionPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case url = "url"
            
            case type = "type"
            
            case page = "page"
            
        }

        public init(page: ProductActionPage? = nil, query: ActionQuery? = nil, type: String? = nil, url: String? = nil) {
            
            self.query = query
            
            self.url = url
            
            self.type = type
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                query = try container.decode(ActionQuery.self, forKey: .query)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                url = try container.decode(String.self, forKey: .url)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                page = try container.decode(ProductActionPage.self, forKey: .page)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
