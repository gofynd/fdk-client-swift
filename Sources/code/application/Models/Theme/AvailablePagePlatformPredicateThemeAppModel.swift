

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: AvailablePagePlatformPredicate
        Used By: Theme
    */
    class AvailablePagePlatformPredicate: Codable {
        
        public var ios: Bool?
        
        public var android: Bool?
        
        public var web: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case ios = "ios"
            
            case android = "android"
            
            case web = "web"
            
        }

        public init(android: Bool? = nil, ios: Bool? = nil, web: Bool? = nil) {
            
            self.ios = ios
            
            self.android = android
            
            self.web = web
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                ios = try container.decode(Bool.self, forKey: .ios)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                android = try container.decode(Bool.self, forKey: .android)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                web = try container.decode(Bool.self, forKey: .web)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            
            
            try? container.encodeIfPresent(web, forKey: .web)
            
            
        }
        
    }
}
