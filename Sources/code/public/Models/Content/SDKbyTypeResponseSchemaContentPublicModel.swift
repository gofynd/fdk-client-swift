

import Foundation
public extension PublicClient.Content {
    /*
        Model: SDKbyTypeResponseSchema
        Used By: Content
    */

    class SDKbyTypeResponseSchema: Codable {
        
        
        public var readmeContent: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case readmeContent = "readme_content"
            
        }

        public init(readmeContent: String? = nil) {
            
            self.readmeContent = readmeContent
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    readmeContent = try container.decode(String.self, forKey: .readmeContent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(readmeContent, forKey: .readmeContent)
            
            
        }
        
    }
}
