

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: renderHTMLResponse
        Used By: Payment
    */
    class renderHTMLResponse: Codable {
        
        public var html: String
        

        public enum CodingKeys: String, CodingKey {
            
            case html = "html"
            
        }

        public init(html: String) {
            
            self.html = html
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            html = try container.decode(String.self, forKey: .html)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            
        }
        
    }
}
