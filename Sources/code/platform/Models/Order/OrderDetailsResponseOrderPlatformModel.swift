

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderDetailsResponse
        Used By: Order
    */

    class OrderDetailsResponse: Codable {
        
        
        public var order: OrderData?
        
        public var success: Bool
        
        public var shipments: [PlatformShipment]?
        

        public enum CodingKeys: String, CodingKey {
            
            case order = "order"
            
            case success = "success"
            
            case shipments = "shipments"
            
        }

        public init(order: OrderData? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            
            self.order = order
            
            self.success = success
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    order = try container.decode(OrderData.self, forKey: .order)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    shipments = try container.decode([PlatformShipment].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderDetailsResponse
        Used By: Order
    */

    class OrderDetailsResponse: Codable {
        
        
        public var order: OrderData?
        
        public var success: Bool
        
        public var shipments: [PlatformShipment]?
        

        public enum CodingKeys: String, CodingKey {
            
            case order = "order"
            
            case success = "success"
            
            case shipments = "shipments"
            
        }

        public init(order: OrderData? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            
            self.order = order
            
            self.success = success
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    order = try container.decode(OrderData.self, forKey: .order)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    shipments = try container.decode([PlatformShipment].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}


