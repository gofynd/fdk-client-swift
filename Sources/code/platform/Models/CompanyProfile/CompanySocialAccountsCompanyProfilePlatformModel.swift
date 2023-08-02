

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: CompanySocialAccounts
        Used By: CompanyProfile
    */

    class CompanySocialAccounts: Codable {
        
        
        public var name: String
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case url = "url"
            
        }

        public init(name: String, url: String) {
            
            self.name = name
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}




