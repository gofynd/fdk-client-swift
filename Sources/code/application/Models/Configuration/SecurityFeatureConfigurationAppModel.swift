

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: SecurityFeature
        Used By: Configuration
    */
    class SecurityFeature: Codable {
        
        public var domains: [AllowedDomain]?
        

        public enum CodingKeys: String, CodingKey {
            
            case domains = "domains"
            
        }

        public init(domains: [AllowedDomain]? = nil) {
            
            self.domains = domains
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                domains = try container.decode([AllowedDomain].self, forKey: .domains)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(domains, forKey: .domains)
            
            
        }
        
    }
}
