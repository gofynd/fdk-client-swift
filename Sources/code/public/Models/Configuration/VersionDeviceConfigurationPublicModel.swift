

import Foundation
public extension PublicClient.Configuration {
    /*
        Model: VersionDevice
        Used By: Configuration
    */

    class VersionDevice: Codable {
        
        
        public var os: VersionDeviceOS?
        

        public enum CodingKeys: String, CodingKey {
            
            case os = "os"
            
        }

        public init(os: VersionDeviceOS? = nil) {
            
            self.os = os
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    os = try container.decode(VersionDeviceOS.self, forKey: .os)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(os, forKey: .os)
            
            
        }
        
    }
}
