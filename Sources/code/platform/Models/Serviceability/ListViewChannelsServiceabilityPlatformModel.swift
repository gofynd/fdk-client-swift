

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ListViewChannels
        Used By: Serviceability
    */

    class ListViewChannels: Codable {
        
        
        public var channelId: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelId = channelId
            
            self.channelType = channelType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ListViewChannels
        Used By: Serviceability
    */

    class ListViewChannels: Codable {
        
        
        public var channelId: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelId = channelId
            
            self.channelType = channelType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
}


