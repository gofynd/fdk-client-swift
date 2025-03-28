

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentItem
        Used By: Logistic
    */
    class ShipmentItem: Codable {
        
        public var fulfillmentId: Int?
        
        public var fulfillmentTags: [String]?
        
        public var fulfillmentType: String?
        
        public var fromServiceability: ServiceabilityNew?
        
        public var articles: [Article]?
        
        public var courierPartners: [CourierPartner]?
        
        public var promise: Promise?
        
        public var tags: [String]?
        
        public var isMto: Bool?
        
        public var isGift: Bool?
        
        public var isLocked: Bool?
        
        public var packaging: Packaging?
        
        public var deliverySlots: DeliverySlots?
        
        public var count: Int?
        
        public var volumetricWeight: Double?
        
        public var ewaybillEnabled: String?
        
        public var mps: Bool?
        
        public var meta: Meta?
        
        public var weight: Int?
        
        public var shipmentType: String?
        
        public var isAutoAssign: Bool?
        
        public var isCodAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fulfillmentType = "fulfillment_type"
            
            case fromServiceability = "from_serviceability"
            
            case articles = "articles"
            
            case courierPartners = "courier_partners"
            
            case promise = "promise"
            
            case tags = "tags"
            
            case isMto = "is_mto"
            
            case isGift = "is_gift"
            
            case isLocked = "is_locked"
            
            case packaging = "packaging"
            
            case deliverySlots = "delivery_slots"
            
            case count = "count"
            
            case volumetricWeight = "volumetric_weight"
            
            case ewaybillEnabled = "ewaybill_enabled"
            
            case mps = "mps"
            
            case meta = "meta"
            
            case weight = "weight"
            
            case shipmentType = "shipment_type"
            
            case isAutoAssign = "is_auto_assign"
            
            case isCodAvailable = "is_cod_available"
            
        }

        public init(articles: [Article]? = nil, count: Int? = nil, courierPartners: [CourierPartner]? = nil, deliverySlots: DeliverySlots? = nil, ewaybillEnabled: String? = nil, fromServiceability: ServiceabilityNew? = nil, fulfillmentId: Int? = nil, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil, isAutoAssign: Bool? = nil, isCodAvailable: Bool? = nil, isGift: Bool? = nil, isLocked: Bool? = nil, isMto: Bool? = nil, meta: Meta? = nil, mps: Bool? = nil, packaging: Packaging? = nil, promise: Promise? = nil, shipmentType: String? = nil, tags: [String]? = nil, volumetricWeight: Double? = nil, weight: Int? = nil) {
            
            self.fulfillmentId = fulfillmentId
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fulfillmentType = fulfillmentType
            
            self.fromServiceability = fromServiceability
            
            self.articles = articles
            
            self.courierPartners = courierPartners
            
            self.promise = promise
            
            self.tags = tags
            
            self.isMto = isMto
            
            self.isGift = isGift
            
            self.isLocked = isLocked
            
            self.packaging = packaging
            
            self.deliverySlots = deliverySlots
            
            self.count = count
            
            self.volumetricWeight = volumetricWeight
            
            self.ewaybillEnabled = ewaybillEnabled
            
            self.mps = mps
            
            self.meta = meta
            
            self.weight = weight
            
            self.shipmentType = shipmentType
            
            self.isAutoAssign = isAutoAssign
            
            self.isCodAvailable = isCodAvailable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
                fromServiceability = try container.decode(ServiceabilityNew.self, forKey: .fromServiceability)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articles = try container.decode([Article].self, forKey: .articles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                courierPartners = try container.decode([CourierPartner].self, forKey: .courierPartners)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promise = try container.decode(Promise.self, forKey: .promise)
            
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
                isMto = try container.decode(Bool.self, forKey: .isMto)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isLocked = try container.decode(Bool.self, forKey: .isLocked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                packaging = try container.decode(Packaging.self, forKey: .packaging)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliverySlots = try container.decode(DeliverySlots.self, forKey: .deliverySlots)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                count = try container.decode(Int.self, forKey: .count)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                volumetricWeight = try container.decode(Double.self, forKey: .volumetricWeight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ewaybillEnabled = try container.decode(String.self, forKey: .ewaybillEnabled)
            
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
                meta = try container.decode(Meta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                weight = try container.decode(Int.self, forKey: .weight)
            
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
                isAutoAssign = try container.decode(Bool.self, forKey: .isAutoAssign)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            try? container.encodeIfPresent(fromServiceability, forKey: .fromServiceability)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            try? container.encodeIfPresent(isLocked, forKey: .isLocked)
            
            
            
            try? container.encodeIfPresent(packaging, forKey: .packaging)
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            try? container.encodeIfPresent(ewaybillEnabled, forKey: .ewaybillEnabled)
            
            
            
            try? container.encodeIfPresent(mps, forKey: .mps)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            try? container.encodeIfPresent(isAutoAssign, forKey: .isAutoAssign)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
        }
        
    }
}
