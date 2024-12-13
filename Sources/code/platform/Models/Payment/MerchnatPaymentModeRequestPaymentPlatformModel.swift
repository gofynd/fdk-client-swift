

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: MerchnatPaymentModeRequest
        Used By: Payment
    */

    class MerchnatPaymentModeRequest: Codable {
        
        
        public var offline: [String: Any]?
        
        public var online: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case offline = "offline"
            
            case online = "online"
            
        }

        public init(offline: [String: Any]? = nil, online: [String: Any]? = nil) {
            
            self.offline = offline
            
            self.online = online
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offline = try container.decode([String: Any].self, forKey: .offline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    online = try container.decode([String: Any].self, forKey: .online)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
            
            
            try? container.encodeIfPresent(online, forKey: .online)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: MerchnatPaymentModeRequest
        Used By: Payment
    */

    class MerchnatPaymentModeRequest: Codable {
        
        
        public var offline: [String: Any]?
        
        public var online: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case offline = "offline"
            
            case online = "online"
            
        }

        public init(offline: [String: Any]? = nil, online: [String: Any]? = nil) {
            
            self.offline = offline
            
            self.online = online
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offline = try container.decode([String: Any].self, forKey: .offline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    online = try container.decode([String: Any].self, forKey: .online)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
            
            
            try? container.encodeIfPresent(online, forKey: .online)
            
            
        }
        
    }
}


