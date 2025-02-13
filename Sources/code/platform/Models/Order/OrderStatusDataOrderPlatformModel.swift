

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
        
        public var text: String?
        
        public var value: String?
        
        public var colorCode: String?
        
        public var expectedDeliveryDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
            case errors = "errors"
            
            case shipmentDetails = "shipment_details"
            
            case text = "text"
            
            case value = "value"
            
            case colorCode = "color_code"
            
            case expectedDeliveryDate = "expected_delivery_date"
            
        }

        public init(colorCode: String? = nil, errors: [String]? = nil, expectedDeliveryDate: String? = nil, orderDetails: OrderDetails, shipmentDetails: [ShipmentDetail]? = nil, text: String? = nil, value: String? = nil) {
            
            self.orderDetails = orderDetails
            
            self.errors = errors
            
            self.shipmentDetails = shipmentDetails
            
            self.text = text
            
            self.value = value
            
            self.colorCode = colorCode
            
            self.expectedDeliveryDate = expectedDeliveryDate
            
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
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    colorCode = try container.decode(String.self, forKey: .colorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expectedDeliveryDate = try container.decode(String.self, forKey: .expectedDeliveryDate)
                
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
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(colorCode, forKey: .colorCode)
            
            
            
            
            try? container.encodeIfPresent(expectedDeliveryDate, forKey: .expectedDeliveryDate)
            
            
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
        
        public var text: String?
        
        public var value: String?
        
        public var colorCode: String?
        
        public var expectedDeliveryDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDetails = "order_details"
            
            case errors = "errors"
            
            case shipmentDetails = "shipment_details"
            
            case text = "text"
            
            case value = "value"
            
            case colorCode = "color_code"
            
            case expectedDeliveryDate = "expected_delivery_date"
            
        }

        public init(colorCode: String? = nil, errors: [String]? = nil, expectedDeliveryDate: String? = nil, orderDetails: OrderDetails, shipmentDetails: [ShipmentDetail]? = nil, text: String? = nil, value: String? = nil) {
            
            self.orderDetails = orderDetails
            
            self.errors = errors
            
            self.shipmentDetails = shipmentDetails
            
            self.text = text
            
            self.value = value
            
            self.colorCode = colorCode
            
            self.expectedDeliveryDate = expectedDeliveryDate
            
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
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    colorCode = try container.decode(String.self, forKey: .colorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expectedDeliveryDate = try container.decode(String.self, forKey: .expectedDeliveryDate)
                
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
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(colorCode, forKey: .colorCode)
            
            
            
            
            try? container.encodeIfPresent(expectedDeliveryDate, forKey: .expectedDeliveryDate)
            
            
        }
        
    }
}


