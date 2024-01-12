

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentDetails
        Used By: Order
    */

    class ShipmentDetails: Codable {
        
        
        public var boxType: String?
        
        public var shipments: Int
        
        public var fulfillmentId: Int
        
        public var articles: [ArticleDetails]
        
        public var dpId: String?
        
        public var meta: [String: Any]?
        
        public var affiliateShipmentId: String
        
        public var dpOptions: [String: Any]?
        
        public var lockStatus: Bool?
        
        public var actionToStatus: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case boxType = "box_type"
            
            case shipments = "shipments"
            
            case fulfillmentId = "fulfillment_id"
            
            case articles = "articles"
            
            case dpId = "dp_id"
            
            case meta = "meta"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case dpOptions = "dp_options"
            
            case lockStatus = "lock_status"
            
            case actionToStatus = "action_to_status"
            
        }

        public init(actionToStatus: [String: Any]? = nil, affiliateShipmentId: String, articles: [ArticleDetails], boxType: String? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, fulfillmentId: Int, lockStatus: Bool? = nil, meta: [String: Any]? = nil, shipments: Int) {
            
            self.boxType = boxType
            
            self.shipments = shipments
            
            self.fulfillmentId = fulfillmentId
            
            self.articles = articles
            
            self.dpId = dpId
            
            self.meta = meta
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.dpOptions = dpOptions
            
            self.lockStatus = lockStatus
            
            self.actionToStatus = actionToStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipments = try container.decode(Int.self, forKey: .shipments)
                
            
            
            
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
            
            
            
                articles = try container.decode([ArticleDetails].self, forKey: .articles)
                
            
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
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
                
            
            
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
            
            
            
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionToStatus = try container.decode([String: Any].self, forKey: .actionToStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encode(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encode(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encode(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encode(actionToStatus, forKey: .actionToStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentDetails
        Used By: Order
    */

    class ShipmentDetails: Codable {
        
        
        public var boxType: String?
        
        public var shipments: Int
        
        public var fulfillmentId: Int
        
        public var articles: [ArticleDetails]
        
        public var dpId: String?
        
        public var meta: [String: Any]?
        
        public var affiliateShipmentId: String
        
        public var dpOptions: [String: Any]?
        
        public var lockStatus: Bool?
        
        public var actionToStatus: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case boxType = "box_type"
            
            case shipments = "shipments"
            
            case fulfillmentId = "fulfillment_id"
            
            case articles = "articles"
            
            case dpId = "dp_id"
            
            case meta = "meta"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case dpOptions = "dp_options"
            
            case lockStatus = "lock_status"
            
            case actionToStatus = "action_to_status"
            
        }

        public init(actionToStatus: [String: Any]? = nil, affiliateShipmentId: String, articles: [ArticleDetails], boxType: String? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, fulfillmentId: Int, lockStatus: Bool? = nil, meta: [String: Any]? = nil, shipments: Int) {
            
            self.boxType = boxType
            
            self.shipments = shipments
            
            self.fulfillmentId = fulfillmentId
            
            self.articles = articles
            
            self.dpId = dpId
            
            self.meta = meta
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.dpOptions = dpOptions
            
            self.lockStatus = lockStatus
            
            self.actionToStatus = actionToStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipments = try container.decode(Int.self, forKey: .shipments)
                
            
            
            
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
            
            
            
                articles = try container.decode([ArticleDetails].self, forKey: .articles)
                
            
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
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
                
            
            
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
            
            
            
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionToStatus = try container.decode([String: Any].self, forKey: .actionToStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encode(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encode(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encode(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encode(actionToStatus, forKey: .actionToStatus)
            
            
        }
        
    }
}


