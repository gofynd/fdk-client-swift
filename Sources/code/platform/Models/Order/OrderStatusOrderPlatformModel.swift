

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderStatus
        Used By: Order
    */

    class OrderStatus: Codable {
        
        
        public var orderDetails: [FyndOrderIdList]?
        
        public var startDate: String
        
        public var endDate: String
        
        public var mobile: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case mobile = "mobile"
            
        }

        public init(endDate: String, mobile: Int, orderDetails: [FyndOrderIdList]? = nil, startDate: String) {
            
            self.orderDetails = orderDetails
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.mobile = mobile
            
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
                
            
            
                startDate = try container.decode(String.self, forKey: .startDate)
                
            
            
            
                endDate = try container.decode(String.self, forKey: .endDate)
                
            
            
            
                mobile = try container.decode(Int.self, forKey: .mobile)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
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
        
        public var startDate: String
        
        public var endDate: String
        
        public var mobile: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case mobile = "mobile"
            
        }

        public init(endDate: String, mobile: Int, orderDetails: [FyndOrderIdList]? = nil, startDate: String) {
            
            self.orderDetails = orderDetails
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.mobile = mobile
            
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
                
            
            
                startDate = try container.decode(String.self, forKey: .startDate)
                
            
            
            
                endDate = try container.decode(String.self, forKey: .endDate)
                
            
            
            
                mobile = try container.decode(Int.self, forKey: .mobile)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
        }
        
    }
}


