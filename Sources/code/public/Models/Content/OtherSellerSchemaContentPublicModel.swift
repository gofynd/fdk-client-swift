

import Foundation
public extension PublicClient.Content {
    /*
        Model: OtherSellerSchema
        Used By: Content
    */

    class OtherSellerSchema: Codable {
        
        
        public var isVisible: Bool?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isVisible = "is_visible"
            
            case title = "title"
            
        }

        public init(isVisible: Bool? = nil, title: String? = nil) {
            
            self.isVisible = isVisible
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isVisible = try container.decode(Bool.self, forKey: .isVisible)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isVisible, forKey: .isVisible)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}
