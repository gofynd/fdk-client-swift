

import Foundation
public extension PublicClient.Configuration {
    /*
        Model: VersionRequest
        Used By: Configuration
    */

    class VersionRequest: Codable {
        
        
        public var application: VersionApplication
        
        public var device: VersionDevice
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case device = "device"
            
        }

        public init(application: VersionApplication, device: VersionDevice) {
            
            self.application = application
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                application = try container.decode(VersionApplication.self, forKey: .application)
                
            
            
            
                device = try container.decode(VersionDevice.self, forKey: .device)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
        }
        
    }
}
