

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TransitionConfigCondition
        Used By: Order
    */

    class TransitionConfigCondition: Codable {
        
        
        public var appId: String
        
        public var orderingChannel: String
        
        public var entity: String
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case orderingChannel = "ordering_channel"
            
            case entity = "entity"
            
        }

        public init(appId: String, entity: String, orderingChannel: String) {
            
            self.appId = appId
            
            self.orderingChannel = orderingChannel
            
            self.entity = entity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
            
            
            
                entity = try container.decode(String.self, forKey: .entity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TransitionConfigCondition
        Used By: Order
    */

    class TransitionConfigCondition: Codable {
        
        
        public var appId: String
        
        public var orderingChannel: String
        
        public var entity: String
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case orderingChannel = "ordering_channel"
            
            case entity = "entity"
            
        }

        public init(appId: String, entity: String, orderingChannel: String) {
            
            self.appId = appId
            
            self.orderingChannel = orderingChannel
            
            self.entity = entity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
            
            
            
                entity = try container.decode(String.self, forKey: .entity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
        }
        
    }
}


