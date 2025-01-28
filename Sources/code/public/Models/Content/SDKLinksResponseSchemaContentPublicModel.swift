

import Foundation
public extension PublicClient.Content {
    /*
        Model: SDKLinksResponseSchema
        Used By: Content
    */

    class SDKLinksResponseSchema: Codable {
        
        
        public var readmes: [SDKLinkObjectSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case readmes = "readmes"
            
        }

        public init(readmes: [SDKLinkObjectSchema]? = nil) {
            
            self.readmes = readmes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    readmes = try container.decode([SDKLinkObjectSchema].self, forKey: .readmes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(readmes, forKey: .readmes)
            
            
        }
        
    }
}
