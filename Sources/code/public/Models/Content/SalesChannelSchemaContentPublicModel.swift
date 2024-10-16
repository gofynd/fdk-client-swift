

import Foundation
public extension PublicClient.Content {
    /*
        Model: SalesChannelSchema
        Used By: Content
    */

    class SalesChannelSchema: Codable {
        
        
        public var canAdd: Bool?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case canAdd = "can_add"
            
            case title = "title"
            
        }

        public init(canAdd: Bool? = nil, title: String? = nil) {
            
            self.canAdd = canAdd
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    canAdd = try container.decode(Bool.self, forKey: .canAdd)
                
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
            
            
            try? container.encodeIfPresent(canAdd, forKey: .canAdd)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}
