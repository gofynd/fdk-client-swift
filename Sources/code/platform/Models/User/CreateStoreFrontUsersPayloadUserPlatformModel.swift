

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateStoreFrontUsersPayload
        Used By: User
    */

    class CreateStoreFrontUsersPayload: Codable {
        
        
        public var absoluteUrl: String
        
        public var fileFormat: String
        
        public var relativeUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case absoluteUrl = "absolute_url"
            
            case fileFormat = "file_format"
            
            case relativeUrl = "relative_url"
            
        }

        public init(absoluteUrl: String, fileFormat: String, relativeUrl: String) {
            
            self.absoluteUrl = absoluteUrl
            
            self.fileFormat = fileFormat
            
            self.relativeUrl = relativeUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                absoluteUrl = try container.decode(String.self, forKey: .absoluteUrl)
                
            
            
            
                fileFormat = try container.decode(String.self, forKey: .fileFormat)
                
            
            
            
                relativeUrl = try container.decode(String.self, forKey: .relativeUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(absoluteUrl, forKey: .absoluteUrl)
            
            
            
            
            try? container.encodeIfPresent(fileFormat, forKey: .fileFormat)
            
            
            
            
            try? container.encodeIfPresent(relativeUrl, forKey: .relativeUrl)
            
            
        }
        
    }
}


