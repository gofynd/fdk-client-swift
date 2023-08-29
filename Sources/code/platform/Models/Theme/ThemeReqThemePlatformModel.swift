

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ThemeReq
        Used By: Theme
    */

    class ThemeReq: Codable {
        
        
        public var marketplaceThemeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case marketplaceThemeId = "marketplace_theme_id"
            
        }

        public init(marketplaceThemeId: String? = nil) {
            
            self.marketplaceThemeId = marketplaceThemeId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    marketplaceThemeId = try container.decode(String.self, forKey: .marketplaceThemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ThemeReq
        Used By: Theme
    */

    class ThemeReq: Codable {
        
        
        public var marketplaceThemeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case marketplaceThemeId = "marketplace_theme_id"
            
        }

        public init(marketplaceThemeId: String? = nil) {
            
            self.marketplaceThemeId = marketplaceThemeId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    marketplaceThemeId = try container.decode(String.self, forKey: .marketplaceThemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)
            
            
        }
        
    }
}


