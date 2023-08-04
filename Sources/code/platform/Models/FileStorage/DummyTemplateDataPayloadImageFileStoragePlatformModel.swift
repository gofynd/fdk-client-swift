

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DummyTemplateDataPayloadImage
        Used By: FileStorage
    */

    class DummyTemplateDataPayloadImage: Codable {
        
        
        public var salesChannelLogo: String
        

        public enum CodingKeys: String, CodingKey {
            
            case salesChannelLogo = "sales_channel_logo"
            
        }

        public init(salesChannelLogo: String) {
            
            self.salesChannelLogo = salesChannelLogo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                salesChannelLogo = try container.decode(String.self, forKey: .salesChannelLogo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(salesChannelLogo, forKey: .salesChannelLogo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DummyTemplateDataPayloadImage
        Used By: FileStorage
    */

    class DummyTemplateDataPayloadImage: Codable {
        
        
        public var salesChannelLogo: String
        

        public enum CodingKeys: String, CodingKey {
            
            case salesChannelLogo = "sales_channel_logo"
            
        }

        public init(salesChannelLogo: String) {
            
            self.salesChannelLogo = salesChannelLogo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                salesChannelLogo = try container.decode(String.self, forKey: .salesChannelLogo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(salesChannelLogo, forKey: .salesChannelLogo)
            
            
        }
        
    }
}


