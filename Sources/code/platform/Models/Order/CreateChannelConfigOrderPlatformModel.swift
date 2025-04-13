

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateChannelConfig
        Used By: Order
    */

    class CreateChannelConfig: Codable {
        
        
        public var dpConfiguration: DpConfiguration?
        
        public var shipmentAssignment: String?
        
        public var locationReassignment: Bool?
        
        public var errors: String?
        
        public var statusCode: Double?
        
        public var fyndOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpConfiguration = "dp_configuration"
            
            case shipmentAssignment = "shipment_assignment"
            
            case locationReassignment = "location_reassignment"
            
            case errors = "errors"
            
            case statusCode = "status_code"
            
            case fyndOrderId = "fynd_order_id"
            
        }

        public init(dpConfiguration: DpConfiguration? = nil, errors: String? = nil, fyndOrderId: String? = nil, locationReassignment: Bool? = nil, shipmentAssignment: String? = nil, statusCode: Double? = nil) {
            
            self.dpConfiguration = dpConfiguration
            
            self.shipmentAssignment = shipmentAssignment
            
            self.locationReassignment = locationReassignment
            
            self.errors = errors
            
            self.statusCode = statusCode
            
            self.fyndOrderId = fyndOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentAssignment = try container.decode(String.self, forKey: .shipmentAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errors = try container.decode(String.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCode = try container.decode(Double.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateChannelConfig
        Used By: Order
    */

    class CreateChannelConfig: Codable {
        
        
        public var dpConfiguration: DpConfiguration?
        
        public var shipmentAssignment: String?
        
        public var locationReassignment: Bool?
        
        public var errors: String?
        
        public var statusCode: Double?
        
        public var fyndOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpConfiguration = "dp_configuration"
            
            case shipmentAssignment = "shipment_assignment"
            
            case locationReassignment = "location_reassignment"
            
            case errors = "errors"
            
            case statusCode = "status_code"
            
            case fyndOrderId = "fynd_order_id"
            
        }

        public init(dpConfiguration: DpConfiguration? = nil, errors: String? = nil, fyndOrderId: String? = nil, locationReassignment: Bool? = nil, shipmentAssignment: String? = nil, statusCode: Double? = nil) {
            
            self.dpConfiguration = dpConfiguration
            
            self.shipmentAssignment = shipmentAssignment
            
            self.locationReassignment = locationReassignment
            
            self.errors = errors
            
            self.statusCode = statusCode
            
            self.fyndOrderId = fyndOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentAssignment = try container.decode(String.self, forKey: .shipmentAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errors = try container.decode(String.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCode = try container.decode(Double.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
        }
        
    }
}


