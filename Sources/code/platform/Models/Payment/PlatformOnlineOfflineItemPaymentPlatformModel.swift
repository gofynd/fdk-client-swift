

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformOnlineOfflineItem
        Used By: Payment
    */

    class PlatformOnlineOfflineItem: Codable {
        
        
        public var online: OnlinePaymentDetails?
        
        public var offline: OfflinePaymentDetails?
        
        public var advance: PlatformOfflineAdvanceDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case online = "online"
            
            case offline = "offline"
            
            case advance = "advance"
            
        }

        public init(advance: PlatformOfflineAdvanceDetails? = nil, offline: OfflinePaymentDetails? = nil, online: OnlinePaymentDetails? = nil) {
            
            self.online = online
            
            self.offline = offline
            
            self.advance = advance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    online = try container.decode(OnlinePaymentDetails.self, forKey: .online)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offline = try container.decode(OfflinePaymentDetails.self, forKey: .offline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    advance = try container.decode(PlatformOfflineAdvanceDetails.self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(online, forKey: .online)
            
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PlatformOnlineOfflineItem
        Used By: Payment
    */

    class PlatformOnlineOfflineItem: Codable {
        
        
        public var online: OnlinePaymentDetails?
        
        public var offline: OfflinePaymentDetails?
        
        public var advance: PlatformOfflineAdvanceDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case online = "online"
            
            case offline = "offline"
            
            case advance = "advance"
            
        }

        public init(advance: PlatformOfflineAdvanceDetails? = nil, offline: OfflinePaymentDetails? = nil, online: OnlinePaymentDetails? = nil) {
            
            self.online = online
            
            self.offline = offline
            
            self.advance = advance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    online = try container.decode(OnlinePaymentDetails.self, forKey: .online)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offline = try container.decode(OfflinePaymentDetails.self, forKey: .offline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    advance = try container.decode(PlatformOfflineAdvanceDetails.self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(online, forKey: .online)
            
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
        }
        
    }
}


