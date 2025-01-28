

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderPayload
        Used By: Order
    */

    class CreateOrderPayload: Codable {
        
        
        public var affiliateId: String
        
        public var orderInfo: OrderInfo
        
        public var orderConfig: OrderConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateId = "affiliate_id"
            
            case orderInfo = "order_info"
            
            case orderConfig = "order_config"
            
        }

        public init(affiliateId: String, orderConfig: OrderConfig, orderInfo: OrderInfo) {
            
            self.affiliateId = affiliateId
            
            self.orderInfo = orderInfo
            
            self.orderConfig = orderConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
            
            
            
                orderInfo = try container.decode(OrderInfo.self, forKey: .orderInfo)
                
            
            
            
                orderConfig = try container.decode(OrderConfig.self, forKey: .orderConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(orderInfo, forKey: .orderInfo)
            
            
            
            
            try? container.encodeIfPresent(orderConfig, forKey: .orderConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderPayload
        Used By: Order
    */

    class CreateOrderPayload: Codable {
        
        
        public var affiliateId: String
        
        public var orderInfo: OrderInfo
        
        public var orderConfig: OrderConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateId = "affiliate_id"
            
            case orderInfo = "order_info"
            
            case orderConfig = "order_config"
            
        }

        public init(affiliateId: String, orderConfig: OrderConfig, orderInfo: OrderInfo) {
            
            self.affiliateId = affiliateId
            
            self.orderInfo = orderInfo
            
            self.orderConfig = orderConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
            
            
            
                orderInfo = try container.decode(OrderInfo.self, forKey: .orderInfo)
                
            
            
            
                orderConfig = try container.decode(OrderConfig.self, forKey: .orderConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(orderInfo, forKey: .orderInfo)
            
            
            
            
            try? container.encodeIfPresent(orderConfig, forKey: .orderConfig)
            
            
        }
        
    }
}


