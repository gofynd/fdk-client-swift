

import Foundation
public extension PublicClient.Content {
    /*
        Model: VisibleOnSchema
        Used By: Content
    */

    class VisibleOnSchema: Codable {
        
        
        public var web: Bool?
        
        public var ios: Bool?
        
        public var android: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case web = "web"
            
            case ios = "ios"
            
            case android = "android"
            
        }

        public init(android: Bool? = nil, ios: Bool? = nil, web: Bool? = nil) {
            
            self.web = web
            
            self.ios = ios
            
            self.android = android
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    web = try container.decode(Bool.self, forKey: .web)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(web, forKey: .web)
            
            
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            
        }
        
    }
}
