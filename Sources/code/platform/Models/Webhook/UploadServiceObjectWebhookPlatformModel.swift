

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: UploadServiceObject
        Used By: Webhook
    */

    class UploadServiceObject: Codable {
        
        
        public var cdn: CdnObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case cdn = "cdn"
            
        }

        public init(cdn: CdnObject? = nil) {
            
            self.cdn = cdn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cdn = try container.decode(CdnObject.self, forKey: .cdn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            
        }
        
    }
}




