

import Foundation
public extension ApplicationClient {
    /*
        Model: ProductAction
        Used By: Cart
    */
    class ProductAction: Codable {
        
        public var type: String?
        
        public var url: String?
        
        public var query: ActionQuery?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case url = "url"
            
            case query = "query"
            
        }

        public init(query: ActionQuery? = nil, type: String? = nil, url: String? = nil) {
            
            self.type = type
            
            self.url = url
            
            self.query = query
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
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
                query = try container.decode(ActionQuery.self, forKey: .query)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}
