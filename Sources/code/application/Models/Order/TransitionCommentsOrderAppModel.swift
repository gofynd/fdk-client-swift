

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: TransitionComments
        Used By: Order
    */
    class TransitionComments: Codable {
        
        public var title: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case message = "message"
            
        }

        public init(message: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                title = try container.decode(String.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
