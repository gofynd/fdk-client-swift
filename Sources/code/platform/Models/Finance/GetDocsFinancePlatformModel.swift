

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetDocs
        Used By: Finance
    */

    class GetDocs: Codable {
        
        
        public var docs: [[String: Any]]?
        
        public var items: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case items = "items"
            
        }

        public init(docs: [[String: Any]]? = nil, items: [[String: Any]]? = nil) {
            
            self.docs = docs
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    docs = try container.decode([[String: Any]].self, forKey: .docs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}




