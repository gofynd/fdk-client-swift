

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: DownloadFileJob
        Used By: Discount
    */

    class DownloadFileJob: Codable {
        
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
        }

        public init(appId: String) {
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}




