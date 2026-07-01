

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeMopUpdateResult
        Used By: Serviceability
    */

    class PincodeMopUpdateResult: Codable {
        
        
        public var pincode: Int
        
        public var channelId: String
        
        public var country: String
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case channelId = "channel_id"
            
            case country = "country"
            
            case isActive = "is_active"
            
        }

        public init(channelId: String, country: String, isActive: Bool, pincode: Int) {
            
            self.pincode = pincode
            
            self.channelId = channelId
            
            self.country = country
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeMopUpdateResult
        Used By: Serviceability
    */

    class PincodeMopUpdateResult: Codable {
        
        
        public var pincode: Int
        
        public var channelId: String
        
        public var country: String
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case channelId = "channel_id"
            
            case country = "country"
            
            case isActive = "is_active"
            
        }

        public init(channelId: String, country: String, isActive: Bool, pincode: Int) {
            
            self.pincode = pincode
            
            self.channelId = channelId
            
            self.country = country
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


