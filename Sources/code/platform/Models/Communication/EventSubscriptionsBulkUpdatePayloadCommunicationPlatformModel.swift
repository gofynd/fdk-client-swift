

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventSubscriptionsBulkUpdatePayload
        Used By: Communication
    */

    class EventSubscriptionsBulkUpdatePayload: Codable {
        
        
        public var subscriptions: [SubscriptionsObject]?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscriptions = "subscriptions"
            
        }

        public init(subscriptions: [SubscriptionsObject]? = nil) {
            
            self.subscriptions = subscriptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subscriptions = try container.decode([SubscriptionsObject].self, forKey: .subscriptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscriptions, forKey: .subscriptions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventSubscriptionsBulkUpdatePayload
        Used By: Communication
    */

    class EventSubscriptionsBulkUpdatePayload: Codable {
        
        
        public var subscriptions: [SubscriptionsObject]?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscriptions = "subscriptions"
            
        }

        public init(subscriptions: [SubscriptionsObject]? = nil) {
            
            self.subscriptions = subscriptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subscriptions = try container.decode([SubscriptionsObject].self, forKey: .subscriptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscriptions, forKey: .subscriptions)
            
            
        }
        
    }
}


