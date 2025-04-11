

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductListingActionPage
        Used By: Catalog
    */
    class ProductListingActionPage: Codable {
        
        public var type: String?
        
        public var query: QueryParams?
        
        public var params: Params?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case query = "query"
            
            case params = "params"
            
        }

        public init(params: Params? = nil, query: QueryParams? = nil, type: String? = nil) {
            
            self.type = type
            
            self.query = query
            
            self.params = params
            
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
                query = try container.decode(QueryParams.self, forKey: .query)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                params = try container.decode(Params.self, forKey: .params)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            
        }
        
    }
}
