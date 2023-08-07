

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: BrandBannerSerializer
        Used By: CompanyProfile
    */

    class BrandBannerSerializer: Codable {
        
        
        public var portrait: String
        
        public var landscape: String
        

        public enum CodingKeys: String, CodingKey {
            
            case portrait = "portrait"
            
            case landscape = "landscape"
            
        }

        public init(landscape: String, portrait: String) {
            
            self.portrait = portrait
            
            self.landscape = landscape
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                portrait = try container.decode(String.self, forKey: .portrait)
                
            
            
            
                landscape = try container.decode(String.self, forKey: .landscape)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
        }
        
    }
}




