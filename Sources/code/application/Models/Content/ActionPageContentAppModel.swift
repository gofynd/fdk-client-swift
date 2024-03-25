

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ActionPage
        Used By: Content
    */
    class ActionPage: Codable {
        
        public var params: [String: [String]]?
        
        public var query: [String: [String]]?
        
        public var url: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case params = "params"
            
            case query = "query"
            
            case url = "url"
            
            case type = "type"
            
        }

        public init(params: [String: [String]]? = nil, query: [String: [String]]? = nil, type: String? = nil, url: String? = nil) {
            
            self.params = params
            
            self.query = query
            
            self.url = url
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                params = try container.decode([String: [String]].self, forKey: .params)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                query = try container.decode([String: [String]].self, forKey: .query)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
