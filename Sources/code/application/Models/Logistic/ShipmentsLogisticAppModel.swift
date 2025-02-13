

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Shipments
        Used By: Logistic
    */
    class Shipments: Codable {
        
        public var fulfillmentId: Int
        
        public var fulfillmentTags: [String]?
        
        public var fulfillmentType: String?
        
        public var ewaybillEnabled: Bool?
        
        public var mps: Bool?
        
        public var meta: [String: Any]?
        
        public var isCodAvailable: Bool?
        
        public var count: Int
        
        public var articles: [ShipmentsArticles]
        
        public var courierPartners: [ShipmentCourierPartners]
        
        public var promise: PromiseObject?
        
        public var tags: [[String: Any]]?
        
        public var isMto: Bool
        
        public var isGift: Bool
        
        public var isLocked: Bool
        
        public var packaging: Packaging
        
        public var deliverySlots: ArticleDeliverySlots?
        
        public var weight: Double
        
        public var volumetricWeight: Double
        
        public var isAutoAssign: Bool
        
        public var shipmentType: String
        
        public var fromServiceability: [String: Any]
        
        public var error: ShipmentError?
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fulfillmentType = "fulfillment_type"
            
            case ewaybillEnabled = "ewaybill_enabled"
            
            case mps = "mps"
            
            case meta = "meta"
            
            case isCodAvailable = "is_cod_available"
            
            case count = "count"
            
            case articles = "articles"
            
            case courierPartners = "courier_partners"
            
            case promise = "promise"
            
            case tags = "tags"
            
            case isMto = "is_mto"
            
            case isGift = "is_gift"
            
            case isLocked = "is_locked"
            
            case packaging = "packaging"
            
            case deliverySlots = "delivery_slots"
            
            case weight = "weight"
            
            case volumetricWeight = "volumetric_weight"
            
            case isAutoAssign = "is_auto_assign"
            
            case shipmentType = "shipment_type"
            
            case fromServiceability = "from_serviceability"
            
            case error = "error"
            
        }

        public init(articles: [ShipmentsArticles], count: Int, courierPartners: [ShipmentCourierPartners], deliverySlots: ArticleDeliverySlots? = nil, error: ShipmentError? = nil, ewaybillEnabled: Bool? = nil, fromServiceability: [String: Any], fulfillmentId: Int, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil, isAutoAssign: Bool, isCodAvailable: Bool? = nil, isGift: Bool, isLocked: Bool, isMto: Bool, meta: [String: Any]? = nil, mps: Bool? = nil, packaging: Packaging, promise: PromiseObject? = nil, shipmentType: String, tags: [[String: Any]]? = nil, volumetricWeight: Double, weight: Double) {
            
            self.fulfillmentId = fulfillmentId
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fulfillmentType = fulfillmentType
            
            self.ewaybillEnabled = ewaybillEnabled
            
            self.mps = mps
            
            self.meta = meta
            
            self.isCodAvailable = isCodAvailable
            
            self.count = count
            
            self.articles = articles
            
            self.courierPartners = courierPartners
            
            self.promise = promise
            
            self.tags = tags
            
            self.isMto = isMto
            
            self.isGift = isGift
            
            self.isLocked = isLocked
            
            self.packaging = packaging
            
            self.deliverySlots = deliverySlots
            
            self.weight = weight
            
            self.volumetricWeight = volumetricWeight
            
            self.isAutoAssign = isAutoAssign
            
            self.shipmentType = shipmentType
            
            self.fromServiceability = fromServiceability
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
            
            
            
            
            do {
                fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
            
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
                ewaybillEnabled = try container.decode(Bool.self, forKey: .ewaybillEnabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mps = try container.decode(Bool.self, forKey: .mps)
            
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
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            count = try container.decode(Int.self, forKey: .count)
            
            
            
            
            articles = try container.decode([ShipmentsArticles].self, forKey: .articles)
            
            
            
            
            courierPartners = try container.decode([ShipmentCourierPartners].self, forKey: .courierPartners)
            
            
            
            
            do {
                promise = try container.decode(PromiseObject.self, forKey: .promise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([[String: Any]].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            isMto = try container.decode(Bool.self, forKey: .isMto)
            
            
            
            
            isGift = try container.decode(Bool.self, forKey: .isGift)
            
            
            
            
            isLocked = try container.decode(Bool.self, forKey: .isLocked)
            
            
            
            
            packaging = try container.decode(Packaging.self, forKey: .packaging)
            
            
            
            
            do {
                deliverySlots = try container.decode(ArticleDeliverySlots.self, forKey: .deliverySlots)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            weight = try container.decode(Double.self, forKey: .weight)
            
            
            
            
            volumetricWeight = try container.decode(Double.self, forKey: .volumetricWeight)
            
            
            
            
            isAutoAssign = try container.decode(Bool.self, forKey: .isAutoAssign)
            
            
            
            
            shipmentType = try container.decode(String.self, forKey: .shipmentType)
            
            
            
            
            fromServiceability = try container.decode([String: Any].self, forKey: .fromServiceability)
            
            
            
            
            do {
                error = try container.decode(ShipmentError.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            try? container.encodeIfPresent(ewaybillEnabled, forKey: .ewaybillEnabled)
            
            
            
            try? container.encodeIfPresent(mps, forKey: .mps)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            try? container.encodeIfPresent(isLocked, forKey: .isLocked)
            
            
            
            try? container.encodeIfPresent(packaging, forKey: .packaging)
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            try? container.encodeIfPresent(isAutoAssign, forKey: .isAutoAssign)
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            try? container.encodeIfPresent(fromServiceability, forKey: .fromServiceability)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}
