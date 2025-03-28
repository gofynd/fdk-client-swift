

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RequestActionSchema
        Used By: Order
    */

    class RequestActionSchema: Codable {
        
        
        public var action: String?
        
        public var shipments: [ShipmentsRequestSchema]?
        
        public var excludeBagsNextState: String?
        
        public var splitShipment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case shipments = "shipments"
            
            case excludeBagsNextState = "exclude_bags_next_state"
            
            case splitShipment = "split_shipment"
            
        }

        public init(action: String? = nil, excludeBagsNextState: String? = nil, shipments: [ShipmentsRequestSchema]? = nil, splitShipment: Bool? = nil) {
            
            self.action = action
            
            self.shipments = shipments
            
            self.excludeBagsNextState = excludeBagsNextState
            
            self.splitShipment = splitShipment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode([ShipmentsRequestSchema].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    splitShipment = try container.decode(Bool.self, forKey: .splitShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
            
            
            
            
            try? container.encodeIfPresent(splitShipment, forKey: .splitShipment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RequestActionSchema
        Used By: Order
    */

    class RequestActionSchema: Codable {
        
        
        public var action: String?
        
        public var shipments: [ShipmentsRequestSchema]?
        
        public var excludeBagsNextState: String?
        
        public var splitShipment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case shipments = "shipments"
            
            case excludeBagsNextState = "exclude_bags_next_state"
            
            case splitShipment = "split_shipment"
            
        }

        public init(action: String? = nil, excludeBagsNextState: String? = nil, shipments: [ShipmentsRequestSchema]? = nil, splitShipment: Bool? = nil) {
            
            self.action = action
            
            self.shipments = shipments
            
            self.excludeBagsNextState = excludeBagsNextState
            
            self.splitShipment = splitShipment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode([ShipmentsRequestSchema].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    splitShipment = try container.decode(Bool.self, forKey: .splitShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
            
            
            
            
            try? container.encodeIfPresent(splitShipment, forKey: .splitShipment)
            
            
        }
        
    }
}


