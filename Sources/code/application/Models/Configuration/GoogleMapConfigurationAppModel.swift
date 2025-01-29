

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: GoogleMap
        Used By: Configuration
    */
    class GoogleMap: Codable {
        
        public var enabled: Bool?
        
        public var credentials: GoogleMapCredentials?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case credentials = "credentials"
            
        }

        public init(credentials: GoogleMapCredentials? = nil, enabled: Bool? = nil) {
            
            self.enabled = enabled
            
            self.credentials = credentials
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                credentials = try container.decode(GoogleMapCredentials.self, forKey: .credentials)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            try? container.encodeIfPresent(credentials, forKey: .credentials)
            
            
        }
        
    }
}
