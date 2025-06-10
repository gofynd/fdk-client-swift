

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttributeFilter
        Used By: User
    */

    class UserAttributeFilter: Codable {
        
        
        public var query: UserAttributeFilterQuery?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
        }

        public init(query: UserAttributeFilterQuery? = nil) {
            
            self.query = query
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(UserAttributeFilterQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}


