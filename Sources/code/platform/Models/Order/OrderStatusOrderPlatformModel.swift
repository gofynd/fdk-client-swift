

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderStatus
        Used By: Order
    */

    class OrderStatus: Codable {
        
        
        public var orderDetails: [FyndOrderIdList]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
        }

        public init(orderDetails: [FyndOrderIdList]? = nil) {
            
            self.orderDetails = orderDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderDetails = try container.decode([FyndOrderIdList].self, forKey: .orderDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderStatus
        Used By: Order
    */

    class OrderStatus: Codable {
        
        
        public var orderDetails: [FyndOrderIdList]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
        }

        public init(orderDetails: [FyndOrderIdList]? = nil) {
            
            self.orderDetails = orderDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderDetails = try container.decode([FyndOrderIdList].self, forKey: .orderDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
        }
        
    }
}


