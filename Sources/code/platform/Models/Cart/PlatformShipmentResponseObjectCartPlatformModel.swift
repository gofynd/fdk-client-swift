

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformShipmentResponseObject
        Used By: Cart
    */

    class PlatformShipmentResponseObject: Codable {
        
        
        public var shipments: Int?
        
        public var fulfillmentId: Int?
        
        public var items: [CartProductInfo]?
        
        public var dpOptions: [String: Any]?
        
        public var shipmentType: String?
        
        public var orderType: String?
        
        public var boxType: String?
        
        public var promise: ShipmentPromise?
        
        public var dpId: String?
        
        public var fulfillmentType: String?
        
        public var articles: [ShipmentArticle]?
        
        public var meta: ShipmentMeta?
        
        public var logisticsMeta: ShipmentLogisticsMeta?
        
        public var error: ShipmentError?
        
        public var debug: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case fulfillmentId = "fulfillment_id"
            
            case items = "items"
            
            case dpOptions = "dp_options"
            
            case shipmentType = "shipment_type"
            
            case orderType = "order_type"
            
            case boxType = "box_type"
            
            case promise = "promise"
            
            case dpId = "dp_id"
            
            case fulfillmentType = "fulfillment_type"
            
            case articles = "articles"
            
            case meta = "meta"
            
            case logisticsMeta = "logistics_meta"
            
            case error = "error"
            
            case debug = "debug"
            
        }

        public init(articles: [ShipmentArticle]? = nil, boxType: String? = nil, debug: [String: Any]? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, error: ShipmentError? = nil, fulfillmentId: Int? = nil, fulfillmentType: String? = nil, items: [CartProductInfo]? = nil, logisticsMeta: ShipmentLogisticsMeta? = nil, meta: ShipmentMeta? = nil, orderType: String? = nil, promise: ShipmentPromise? = nil, shipments: Int? = nil, shipmentType: String? = nil) {
            
            self.shipments = shipments
            
            self.fulfillmentId = fulfillmentId
            
            self.items = items
            
            self.dpOptions = dpOptions
            
            self.shipmentType = shipmentType
            
            self.orderType = orderType
            
            self.boxType = boxType
            
            self.promise = promise
            
            self.dpId = dpId
            
            self.fulfillmentType = fulfillmentType
            
            self.articles = articles
            
            self.meta = meta
            
            self.logisticsMeta = logisticsMeta
            
            self.error = error
            
            self.debug = debug
            
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
                    fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
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
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
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
                    promise = try container.decode(ShipmentPromise.self, forKey: .promise)
                
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
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articles = try container.decode([ShipmentArticle].self, forKey: .articles)
                
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
                    debug = try container.decode([String: Any].self, forKey: .debug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(logisticsMeta, forKey: .logisticsMeta)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(debug, forKey: .debug)
            
            
        }
        
    }
}


