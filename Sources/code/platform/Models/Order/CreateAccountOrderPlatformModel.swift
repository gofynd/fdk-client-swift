

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateAccount
        Used By: Order
    */

    class CreateAccount: Codable {
        
        
        public var channelAccountName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelAccountName = "channel_account_name"
            
        }

        public init(channelAccountName: String) {
            
            self.channelAccountName = channelAccountName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelAccountName = try container.decode(String.self, forKey: .channelAccountName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelAccountName, forKey: .channelAccountName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateAccount
        Used By: Order
    */

    class CreateAccount: Codable {
        
        
        public var channelAccountName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelAccountName = "channel_account_name"
            
        }

        public init(channelAccountName: String) {
            
            self.channelAccountName = channelAccountName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelAccountName = try container.decode(String.self, forKey: .channelAccountName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelAccountName, forKey: .channelAccountName)
            
            
        }
        
    }
}


