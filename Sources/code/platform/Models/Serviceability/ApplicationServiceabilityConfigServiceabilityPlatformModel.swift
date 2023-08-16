

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationServiceabilityConfig
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfig: Codable {
        
        
        public var channelId: String
        
        public var serviceabilityType: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case serviceabilityType = "serviceability_type"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            
            self.channelId = channelId
            
            self.serviceabilityType = serviceabilityType
            
            self.channelType = channelType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationServiceabilityConfig
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfig: Codable {
        
        
        public var channelId: String
        
        public var serviceabilityType: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case serviceabilityType = "serviceability_type"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            
            self.channelId = channelId
            
            self.serviceabilityType = serviceabilityType
            
            self.channelType = channelType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
}


