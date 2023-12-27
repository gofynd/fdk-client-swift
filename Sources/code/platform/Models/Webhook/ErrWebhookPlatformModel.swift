

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: Err
        Used By: Webhook
    */

    class Err: Codable {
        
        
        public var msg: String?
        
        public var param: String?
        
        public var location: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case msg = "msg"
            
            case param = "param"
            
            case location = "location"
            
        }

        public init(location: String? = nil, msg: String? = nil, param: String? = nil) {
            
            self.msg = msg
            
            self.param = param
            
            self.location = location
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    msg = try container.decode(String.self, forKey: .msg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    param = try container.decode(String.self, forKey: .param)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    location = try container.decode(String.self, forKey: .location)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(msg, forKey: .msg)
            
            
            
            
            try? container.encodeIfPresent(param, forKey: .param)
            
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
        }
        
    }
}




