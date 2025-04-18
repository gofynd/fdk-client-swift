

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Image
        Used By: FileStorage
    */

    class Image: Codable {
        
        
        public var salesChannelLogo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case salesChannelLogo = "sales_channel_logo"
            
        }

        public init(salesChannelLogo: String? = nil) {
            
            self.salesChannelLogo = salesChannelLogo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    salesChannelLogo = try container.decode(String.self, forKey: .salesChannelLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(salesChannelLogo, forKey: .salesChannelLogo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Image
        Used By: FileStorage
    */

    class Image: Codable {
        
        
        public var salesChannelLogo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case salesChannelLogo = "sales_channel_logo"
            
        }

        public init(salesChannelLogo: String? = nil) {
            
            self.salesChannelLogo = salesChannelLogo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    salesChannelLogo = try container.decode(String.self, forKey: .salesChannelLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(salesChannelLogo, forKey: .salesChannelLogo)
            
            
        }
        
    }
}


