

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: JobExecute
        Used By: Analytics
    */

    class JobExecute: Codable {
        
        
        public var query: String?
        
        public var encoding: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case encoding = "encoding"
            
            case page = "page"
            
        }

        public init(encoding: String? = nil, page: Page? = nil, query: String? = nil) {
            
            self.query = query
            
            self.encoding = encoding
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(String.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    encoding = try container.decode(String.self, forKey: .encoding)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(encoding, forKey: .encoding)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


