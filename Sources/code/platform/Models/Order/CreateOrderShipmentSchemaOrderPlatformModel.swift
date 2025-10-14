

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderShipmentSchema
        Used By: Order
    */

    class CreateOrderShipmentSchema: Codable {
        
        
        public var isMto: Bool?
        
        public var shipmentLifecycleMessages: [LifecycleMessageSchema]?
        
        public var tags: [String]?
        
        public var type: String?
        
        public var fulfillmentOption: FulfillmentOptionSchema?
        
        public var externalShipmentId: String?
        
        public var lineItems: [LineItemSchema]?
        
        public var orderFulfillmentTimeline: OrderFulfillmentTimelineSchema?
        
        public var locationId: Int?
        
        public var externalLocationId: String?
        
        public var returnLocationId: Int?
        
        public var courierPartnerDetails: CourierPartnerDetailsSchema?
        
        public var taxDetails: TaxDetailsSchema?
        
        public var promiseDetails: PromiseDetailsSchema?
        
        public var allowProcessingAfter: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isMto = "is_mto"
            
            case shipmentLifecycleMessages = "shipment_lifecycle_messages"
            
            case tags = "tags"
            
            case type = "type"
            
            case fulfillmentOption = "fulfillment_option"
            
            case externalShipmentId = "external_shipment_id"
            
            case lineItems = "line_items"
            
            case orderFulfillmentTimeline = "order_fulfillment_timeline"
            
            case locationId = "location_id"
            
            case externalLocationId = "external_location_id"
            
            case returnLocationId = "return_location_id"
            
            case courierPartnerDetails = "courier_partner_details"
            
            case taxDetails = "tax_details"
            
            case promiseDetails = "promise_details"
            
            case allowProcessingAfter = "allow_processing_after"
            
            case meta = "meta"
            
        }

        public init(allowProcessingAfter: String? = nil, courierPartnerDetails: CourierPartnerDetailsSchema? = nil, externalLocationId: String? = nil, externalShipmentId: String? = nil, fulfillmentOption: FulfillmentOptionSchema? = nil, isMto: Bool? = nil, lineItems: [LineItemSchema]? = nil, locationId: Int? = nil, meta: [String: Any]? = nil, orderFulfillmentTimeline: OrderFulfillmentTimelineSchema? = nil, promiseDetails: PromiseDetailsSchema? = nil, returnLocationId: Int? = nil, shipmentLifecycleMessages: [LifecycleMessageSchema]? = nil, tags: [String]? = nil, taxDetails: TaxDetailsSchema? = nil, type: String? = nil) {
            
            self.isMto = isMto
            
            self.shipmentLifecycleMessages = shipmentLifecycleMessages
            
            self.tags = tags
            
            self.type = type
            
            self.fulfillmentOption = fulfillmentOption
            
            self.externalShipmentId = externalShipmentId
            
            self.lineItems = lineItems
            
            self.orderFulfillmentTimeline = orderFulfillmentTimeline
            
            self.locationId = locationId
            
            self.externalLocationId = externalLocationId
            
            self.returnLocationId = returnLocationId
            
            self.courierPartnerDetails = courierPartnerDetails
            
            self.taxDetails = taxDetails
            
            self.promiseDetails = promiseDetails
            
            self.allowProcessingAfter = allowProcessingAfter
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isMto = try container.decode(Bool.self, forKey: .isMto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentLifecycleMessages = try container.decode([LifecycleMessageSchema].self, forKey: .shipmentLifecycleMessages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOption = try container.decode(FulfillmentOptionSchema.self, forKey: .fulfillmentOption)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineItems = try container.decode([LineItemSchema].self, forKey: .lineItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderFulfillmentTimeline = try container.decode(OrderFulfillmentTimelineSchema.self, forKey: .orderFulfillmentTimeline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationId = try container.decode(Int.self, forKey: .locationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalLocationId = try container.decode(String.self, forKey: .externalLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnLocationId = try container.decode(Int.self, forKey: .returnLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerDetails = try container.decode(CourierPartnerDetailsSchema.self, forKey: .courierPartnerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxDetails = try container.decode(TaxDetailsSchema.self, forKey: .taxDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseDetails = try container.decode(PromiseDetailsSchema.self, forKey: .promiseDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowProcessingAfter = try container.decode(String.self, forKey: .allowProcessingAfter)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(shipmentLifecycleMessages, forKey: .shipmentLifecycleMessages)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOption, forKey: .fulfillmentOption)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(orderFulfillmentTimeline, forKey: .orderFulfillmentTimeline)
            
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            
            try? container.encodeIfPresent(externalLocationId, forKey: .externalLocationId)
            
            
            
            
            try? container.encodeIfPresent(returnLocationId, forKey: .returnLocationId)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerDetails, forKey: .courierPartnerDetails)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(promiseDetails, forKey: .promiseDetails)
            
            
            
            
            try? container.encodeIfPresent(allowProcessingAfter, forKey: .allowProcessingAfter)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderShipmentSchema
        Used By: Order
    */

    class CreateOrderShipmentSchema: Codable {
        
        
        public var isMto: Bool?
        
        public var shipmentLifecycleMessages: [LifecycleMessageSchema]?
        
        public var tags: [String]?
        
        public var type: String?
        
        public var fulfillmentOption: FulfillmentOptionSchema?
        
        public var externalShipmentId: String?
        
        public var lineItems: [LineItemSchema]?
        
        public var orderFulfillmentTimeline: OrderFulfillmentTimelineSchema?
        
        public var locationId: Int?
        
        public var externalLocationId: String?
        
        public var returnLocationId: Int?
        
        public var courierPartnerDetails: CourierPartnerDetailsSchema?
        
        public var taxDetails: TaxDetailsSchema?
        
        public var promiseDetails: PromiseDetailsSchema?
        
        public var allowProcessingAfter: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isMto = "is_mto"
            
            case shipmentLifecycleMessages = "shipment_lifecycle_messages"
            
            case tags = "tags"
            
            case type = "type"
            
            case fulfillmentOption = "fulfillment_option"
            
            case externalShipmentId = "external_shipment_id"
            
            case lineItems = "line_items"
            
            case orderFulfillmentTimeline = "order_fulfillment_timeline"
            
            case locationId = "location_id"
            
            case externalLocationId = "external_location_id"
            
            case returnLocationId = "return_location_id"
            
            case courierPartnerDetails = "courier_partner_details"
            
            case taxDetails = "tax_details"
            
            case promiseDetails = "promise_details"
            
            case allowProcessingAfter = "allow_processing_after"
            
            case meta = "meta"
            
        }

        public init(allowProcessingAfter: String? = nil, courierPartnerDetails: CourierPartnerDetailsSchema? = nil, externalLocationId: String? = nil, externalShipmentId: String? = nil, fulfillmentOption: FulfillmentOptionSchema? = nil, isMto: Bool? = nil, lineItems: [LineItemSchema]? = nil, locationId: Int? = nil, meta: [String: Any]? = nil, orderFulfillmentTimeline: OrderFulfillmentTimelineSchema? = nil, promiseDetails: PromiseDetailsSchema? = nil, returnLocationId: Int? = nil, shipmentLifecycleMessages: [LifecycleMessageSchema]? = nil, tags: [String]? = nil, taxDetails: TaxDetailsSchema? = nil, type: String? = nil) {
            
            self.isMto = isMto
            
            self.shipmentLifecycleMessages = shipmentLifecycleMessages
            
            self.tags = tags
            
            self.type = type
            
            self.fulfillmentOption = fulfillmentOption
            
            self.externalShipmentId = externalShipmentId
            
            self.lineItems = lineItems
            
            self.orderFulfillmentTimeline = orderFulfillmentTimeline
            
            self.locationId = locationId
            
            self.externalLocationId = externalLocationId
            
            self.returnLocationId = returnLocationId
            
            self.courierPartnerDetails = courierPartnerDetails
            
            self.taxDetails = taxDetails
            
            self.promiseDetails = promiseDetails
            
            self.allowProcessingAfter = allowProcessingAfter
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isMto = try container.decode(Bool.self, forKey: .isMto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentLifecycleMessages = try container.decode([LifecycleMessageSchema].self, forKey: .shipmentLifecycleMessages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOption = try container.decode(FulfillmentOptionSchema.self, forKey: .fulfillmentOption)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineItems = try container.decode([LineItemSchema].self, forKey: .lineItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderFulfillmentTimeline = try container.decode(OrderFulfillmentTimelineSchema.self, forKey: .orderFulfillmentTimeline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationId = try container.decode(Int.self, forKey: .locationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalLocationId = try container.decode(String.self, forKey: .externalLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnLocationId = try container.decode(Int.self, forKey: .returnLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerDetails = try container.decode(CourierPartnerDetailsSchema.self, forKey: .courierPartnerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxDetails = try container.decode(TaxDetailsSchema.self, forKey: .taxDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseDetails = try container.decode(PromiseDetailsSchema.self, forKey: .promiseDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowProcessingAfter = try container.decode(String.self, forKey: .allowProcessingAfter)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(shipmentLifecycleMessages, forKey: .shipmentLifecycleMessages)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOption, forKey: .fulfillmentOption)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(orderFulfillmentTimeline, forKey: .orderFulfillmentTimeline)
            
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            
            try? container.encodeIfPresent(externalLocationId, forKey: .externalLocationId)
            
            
            
            
            try? container.encodeIfPresent(returnLocationId, forKey: .returnLocationId)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerDetails, forKey: .courierPartnerDetails)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(promiseDetails, forKey: .promiseDetails)
            
            
            
            
            try? container.encodeIfPresent(allowProcessingAfter, forKey: .allowProcessingAfter)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


