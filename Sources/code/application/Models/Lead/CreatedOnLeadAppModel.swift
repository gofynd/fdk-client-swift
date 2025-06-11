

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: CreatedOn
        Used By: Lead
    */
    class CreatedOn: Codable {
        
        public var userAgent: String
        
        public var platform: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userAgent = "user_agent"
            
            case platform = "platform"
            
        }

        public init(platform: String? = nil, userAgent: String) {
            
            self.userAgent = userAgent
            
            self.platform = platform
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            userAgent = try container.decode(String.self, forKey: .userAgent)
            
            
            
            
            do {
                platform = try container.decode(String.self, forKey: .platform)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
        }
        
    }
}
