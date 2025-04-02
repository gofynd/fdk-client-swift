

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ShipmentResponse
        Used By: Cart
    */
    class ShipmentResponse: Codable {
        
        public var shipments: Int?
        
        public var promise: ShipmentPromise?
        
        public var orderType: String?
        
        public var boxType: String?
        
        public var shipmentType: String?
        
        public var dpOptions: [String: Any]?
        
        public var dpId: String?
        
        public var items: [CartProductInfo]?
        
        public var fulfillmentType: String?
        
        public var fulfillmentId: Int?
        
        public var meta: ShipmentMeta?
        
        public var logisticsMeta: ShipmentLogisticsMeta?
        
        public var error: ShipmentError?
        
        public var journeyWisePromise: [JourneyPromiseObject]?
        
        public var distance: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case promise = "promise"
            
            case orderType = "order_type"
            
            case boxType = "box_type"
            
            case shipmentType = "shipment_type"
            
            case dpOptions = "dp_options"
            
            case dpId = "dp_id"
            
            case items = "items"
            
            case fulfillmentType = "fulfillment_type"
            
            case fulfillmentId = "fulfillment_id"
            
            case meta = "meta"
            
            case logisticsMeta = "logistics_meta"
            
            case error = "error"
            
            case journeyWisePromise = "journey_wise_promise"
            
            case distance = "distance"
            
        }

        public init(boxType: String? = nil, distance: Double? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, error: ShipmentError? = nil, fulfillmentId: Int? = nil, fulfillmentType: String? = nil, items: [CartProductInfo]? = nil, journeyWisePromise: [JourneyPromiseObject]? = nil, logisticsMeta: ShipmentLogisticsMeta? = nil, meta: ShipmentMeta? = nil, orderType: String? = nil, promise: ShipmentPromise? = nil, shipments: Int? = nil, shipmentType: String? = nil) {
            
            self.shipments = shipments
            
            self.promise = promise
            
            self.orderType = orderType
            
            self.boxType = boxType
            
            self.shipmentType = shipmentType
            
            self.dpOptions = dpOptions
            
            self.dpId = dpId
            
            self.items = items
            
            self.fulfillmentType = fulfillmentType
            
            self.fulfillmentId = fulfillmentId
            
            self.meta = meta
            
            self.logisticsMeta = logisticsMeta
            
            self.error = error
            
            self.journeyWisePromise = journeyWisePromise
            
            self.distance = distance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                shipments = try container.decode(Int.self, forKey: .shipments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promise = try container.decode(ShipmentPromise.self, forKey: .promise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderType = try container.decode(String.self, forKey: .orderType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                boxType = try container.decode(String.self, forKey: .boxType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentType = try container.decode(String.self, forKey: .shipmentType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dpId = try container.decode(String.self, forKey: .dpId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(ShipmentMeta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logisticsMeta = try container.decode(ShipmentLogisticsMeta.self, forKey: .logisticsMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(ShipmentError.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                journeyWisePromise = try container.decode([JourneyPromiseObject].self, forKey: .journeyWisePromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                distance = try container.decode(Double.self, forKey: .distance)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(logisticsMeta, forKey: .logisticsMeta)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(journeyWisePromise, forKey: .journeyWisePromise)
            
            
            
            try? container.encodeIfPresent(distance, forKey: .distance)
            
            
        }
        
    }
}
