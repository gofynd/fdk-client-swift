

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetOneOrAllParams
        Used By: Logistic
    */
    class GetOneOrAllParams: Codable {
        
        public var path: GetOneOrAllPath?
        
        public var query: GetOneOrAllQuery?
        

        public enum CodingKeys: String, CodingKey {
            
            case path = "path"
            
            case query = "query"
            
        }

        public init(path: GetOneOrAllPath? = nil, query: GetOneOrAllQuery? = nil) {
            
            self.path = path
            
            self.query = query
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                path = try container.decode(GetOneOrAllPath.self, forKey: .path)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                query = try container.decode(GetOneOrAllQuery.self, forKey: .query)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}
