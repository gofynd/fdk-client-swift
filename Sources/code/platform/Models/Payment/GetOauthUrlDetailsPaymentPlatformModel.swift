

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetOauthUrlDetails
        Used By: Payment
    */

    class GetOauthUrlDetails: Codable {
        
        
        public var url: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case success = "success"
            
        }

        public init(success: Bool, url: String) {
            
            self.url = url
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetOauthUrlDetails
        Used By: Payment
    */

    class GetOauthUrlDetails: Codable {
        
        
        public var url: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case success = "success"
            
        }

        public init(success: Bool, url: String) {
            
            self.url = url
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


