

import Foundation
public extension PublicClient.Content {
    /*
        Model: WhatsNew
        Used By: Content
    */

    class WhatsNew: Codable {
        
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
        }

        public init(description: String? = nil) {
            
            self.description = description
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}
