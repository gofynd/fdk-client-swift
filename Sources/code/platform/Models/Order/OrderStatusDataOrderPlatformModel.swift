

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderStatusData
        Used By: Order
    */

    class OrderStatusData: Codable {
        
        
        public var orderDetails: OrderDetails
        
        public var errors: [String]?
        
        public var shipmentDetails: [ShipmentDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
            case errors = "errors"
            
            case shipmentDetails = "shipment_details"
            
        }

        public init(errors: [String]? = nil, orderDetails: OrderDetails, shipmentDetails: [ShipmentDetail]? = nil) {
            
            self.orderDetails = orderDetails
            
            self.errors = errors
            
            self.shipmentDetails = shipmentDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderDetails = try container.decode(OrderDetails.self, forKey: .orderDetails)
                
            
            
            
                do {
                    errors = try container.decode([String].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentDetails = try container.decode([ShipmentDetail].self, forKey: .shipmentDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderStatusData
        Used By: Order
    */

    class OrderStatusData: Codable {
        
        
        public var orderDetails: OrderDetails
        
        public var errors: [String]?
        
        public var shipmentDetails: [ShipmentDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
            case errors = "errors"
            
            case shipmentDetails = "shipment_details"
            
        }

        public init(errors: [String]? = nil, orderDetails: OrderDetails, shipmentDetails: [ShipmentDetail]? = nil) {
            
            self.orderDetails = orderDetails
            
            self.errors = errors
            
            self.shipmentDetails = shipmentDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderDetails = try container.decode(OrderDetails.self, forKey: .orderDetails)
                
            
            
            
                do {
                    errors = try container.decode([String].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentDetails = try container.decode([ShipmentDetail].self, forKey: .shipmentDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)
            
            
        }
        
    }
}


