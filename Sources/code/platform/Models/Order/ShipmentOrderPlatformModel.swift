

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Shipment
        Used By: Order
    */

    class Shipment: Codable {
        
        
        public var lineItems: [LineItem]
        
        public var externalShipmentId: String?
        
        public var processingDates: ProcessingDates?
        
        public var meta: [String: Any]?
        
        public var priority: Int?
        
        public var locationId: Int
        
        public var orderType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineItems = "line_items"
            
            case externalShipmentId = "external_shipment_id"
            
            case processingDates = "processing_dates"
            
            case meta = "meta"
            
            case priority = "priority"
            
            case locationId = "location_id"
            
            case orderType = "order_type"
            
        }

        public init(externalShipmentId: String? = nil, lineItems: [LineItem], locationId: Int, meta: [String: Any]? = nil, orderType: String? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil) {
            
            self.lineItems = lineItems
            
            self.externalShipmentId = externalShipmentId
            
            self.processingDates = processingDates
            
            self.meta = meta
            
            self.priority = priority
            
            self.locationId = locationId
            
            self.orderType = orderType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineItems = try container.decode([LineItem].self, forKey: .lineItems)
                
            
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingDates = try container.decode(ProcessingDates.self, forKey: .processingDates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                locationId = try container.decode(Int.self, forKey: .locationId)
                
            
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(processingDates, forKey: .processingDates)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Shipment
        Used By: Order
    */

    class Shipment: Codable {
        
        
        public var lineItems: [LineItem]
        
        public var externalShipmentId: String?
        
        public var processingDates: ProcessingDates?
        
        public var meta: [String: Any]?
        
        public var priority: Int?
        
        public var locationId: Int
        
        public var orderType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineItems = "line_items"
            
            case externalShipmentId = "external_shipment_id"
            
            case processingDates = "processing_dates"
            
            case meta = "meta"
            
            case priority = "priority"
            
            case locationId = "location_id"
            
            case orderType = "order_type"
            
        }

        public init(externalShipmentId: String? = nil, lineItems: [LineItem], locationId: Int, meta: [String: Any]? = nil, orderType: String? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil) {
            
            self.lineItems = lineItems
            
            self.externalShipmentId = externalShipmentId
            
            self.processingDates = processingDates
            
            self.meta = meta
            
            self.priority = priority
            
            self.locationId = locationId
            
            self.orderType = orderType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineItems = try container.decode([LineItem].self, forKey: .lineItems)
                
            
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingDates = try container.decode(ProcessingDates.self, forKey: .processingDates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                locationId = try container.decode(Int.self, forKey: .locationId)
                
            
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(processingDates, forKey: .processingDates)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
        }
        
    }
}


