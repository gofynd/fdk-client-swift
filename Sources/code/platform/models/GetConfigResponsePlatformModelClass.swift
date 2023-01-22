

import Foundation
public extension PlatformClient {
    /*
        Model: GetConfigResponse
        Used By: Catalog
    */

    class GetConfigResponse: Codable {
        
        
        public var data: [[String: Any]]
        
        public var page: PageResponseType
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case page = "page"
            
        }

        public init(data: [[String: Any]], page: PageResponseType) {
            
            self.data = data
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([[String: Any]].self, forKey: .data)
                
            
            
            
                page = try container.decode(PageResponseType.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
