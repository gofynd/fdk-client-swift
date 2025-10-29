

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PlatformShipmentsSchema
        Used By: Serviceability
    */

    class PlatformShipmentsSchema: Codable {
        
        
        public var tags: [String]?
        
        public var packaging: Packaging?
        
        public var fulfillmentOption: FulfillmentOptionItem?
        
        public var weight: Double?
        
        public var shipmentType: String?
        
        public var isAutoAssign: Bool?
        
        public var volumetricWeight: Double?
        
        public var fulfillmentTags: [String]?
        
        public var promise: ShipmentsPromise?
        
        public var isEwaybillEnabled: Bool?
        
        public var isMto: Bool?
        
        public var articles: [ShipmentsArticle]?
        
        public var fulfillmentType: String?
        
        public var mps: Bool?
        
        public var fulfillmentLocationId: Int?
        
        public var courierPartners: [ShipmentsCourierPartner]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case packaging = "packaging"
            
            case fulfillmentOption = "fulfillment_option"
            
            case weight = "weight"
            
            case shipmentType = "shipment_type"
            
            case isAutoAssign = "is_auto_assign"
            
            case volumetricWeight = "volumetric_weight"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case promise = "promise"
            
            case isEwaybillEnabled = "is_ewaybill_enabled"
            
            case isMto = "is_mto"
            
            case articles = "articles"
            
            case fulfillmentType = "fulfillment_type"
            
            case mps = "mps"
            
            case fulfillmentLocationId = "fulfillment_location_id"
            
            case courierPartners = "courier_partners"
            
        }

        public init(articles: [ShipmentsArticle]? = nil, courierPartners: [ShipmentsCourierPartner]? = nil, fulfillmentLocationId: Int? = nil, fulfillmentOption: FulfillmentOptionItem? = nil, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil, isAutoAssign: Bool? = nil, isEwaybillEnabled: Bool? = nil, isMto: Bool? = nil, mps: Bool? = nil, packaging: Packaging? = nil, promise: ShipmentsPromise? = nil, shipmentType: String? = nil, tags: [String]? = nil, volumetricWeight: Double? = nil, weight: Double? = nil) {
            
            self.tags = tags
            
            self.packaging = packaging
            
            self.fulfillmentOption = fulfillmentOption
            
            self.weight = weight
            
            self.shipmentType = shipmentType
            
            self.isAutoAssign = isAutoAssign
            
            self.volumetricWeight = volumetricWeight
            
            self.fulfillmentTags = fulfillmentTags
            
            self.promise = promise
            
            self.isEwaybillEnabled = isEwaybillEnabled
            
            self.isMto = isMto
            
            self.articles = articles
            
            self.fulfillmentType = fulfillmentType
            
            self.mps = mps
            
            self.fulfillmentLocationId = fulfillmentLocationId
            
            self.courierPartners = courierPartners
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
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
                    fulfillmentOption = try container.decode(FulfillmentOptionItem.self, forKey: .fulfillmentOption)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
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
                    volumetricWeight = try container.decode(Double.self, forKey: .volumetricWeight)
                
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
                    promise = try container.decode(ShipmentsPromise.self, forKey: .promise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEwaybillEnabled = try container.decode(Bool.self, forKey: .isEwaybillEnabled)
                
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
                    articles = try container.decode([ShipmentsArticle].self, forKey: .articles)
                
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
                    mps = try container.decode(Bool.self, forKey: .mps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentLocationId = try container.decode(Int.self, forKey: .fulfillmentLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartners = try container.decode([ShipmentsCourierPartner].self, forKey: .courierPartners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(packaging, forKey: .packaging)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOption, forKey: .fulfillmentOption)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            
            try? container.encodeIfPresent(isAutoAssign, forKey: .isAutoAssign)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(isEwaybillEnabled, forKey: .isEwaybillEnabled)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(mps, forKey: .mps)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentLocationId, forKey: .fulfillmentLocationId)
            
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PlatformShipmentsSchema
        Used By: Serviceability
    */

    class PlatformShipmentsSchema: Codable {
        
        
        public var tags: [String]?
        
        public var packaging: Packaging?
        
        public var fulfillmentOption: FulfillmentOptionItem?
        
        public var weight: Double?
        
        public var shipmentType: String?
        
        public var isAutoAssign: Bool?
        
        public var volumetricWeight: Double?
        
        public var fulfillmentTags: [String]?
        
        public var promise: ShipmentsPromise?
        
        public var isEwaybillEnabled: Bool?
        
        public var isMto: Bool?
        
        public var articles: [ShipmentsArticle]?
        
        public var fulfillmentType: String?
        
        public var mps: Bool?
        
        public var fulfillmentLocationId: Int?
        
        public var courierPartners: [ShipmentsCourierPartner]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case packaging = "packaging"
            
            case fulfillmentOption = "fulfillment_option"
            
            case weight = "weight"
            
            case shipmentType = "shipment_type"
            
            case isAutoAssign = "is_auto_assign"
            
            case volumetricWeight = "volumetric_weight"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case promise = "promise"
            
            case isEwaybillEnabled = "is_ewaybill_enabled"
            
            case isMto = "is_mto"
            
            case articles = "articles"
            
            case fulfillmentType = "fulfillment_type"
            
            case mps = "mps"
            
            case fulfillmentLocationId = "fulfillment_location_id"
            
            case courierPartners = "courier_partners"
            
        }

        public init(articles: [ShipmentsArticle]? = nil, courierPartners: [ShipmentsCourierPartner]? = nil, fulfillmentLocationId: Int? = nil, fulfillmentOption: FulfillmentOptionItem? = nil, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil, isAutoAssign: Bool? = nil, isEwaybillEnabled: Bool? = nil, isMto: Bool? = nil, mps: Bool? = nil, packaging: Packaging? = nil, promise: ShipmentsPromise? = nil, shipmentType: String? = nil, tags: [String]? = nil, volumetricWeight: Double? = nil, weight: Double? = nil) {
            
            self.tags = tags
            
            self.packaging = packaging
            
            self.fulfillmentOption = fulfillmentOption
            
            self.weight = weight
            
            self.shipmentType = shipmentType
            
            self.isAutoAssign = isAutoAssign
            
            self.volumetricWeight = volumetricWeight
            
            self.fulfillmentTags = fulfillmentTags
            
            self.promise = promise
            
            self.isEwaybillEnabled = isEwaybillEnabled
            
            self.isMto = isMto
            
            self.articles = articles
            
            self.fulfillmentType = fulfillmentType
            
            self.mps = mps
            
            self.fulfillmentLocationId = fulfillmentLocationId
            
            self.courierPartners = courierPartners
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
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
                    fulfillmentOption = try container.decode(FulfillmentOptionItem.self, forKey: .fulfillmentOption)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
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
                    volumetricWeight = try container.decode(Double.self, forKey: .volumetricWeight)
                
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
                    promise = try container.decode(ShipmentsPromise.self, forKey: .promise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEwaybillEnabled = try container.decode(Bool.self, forKey: .isEwaybillEnabled)
                
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
                    articles = try container.decode([ShipmentsArticle].self, forKey: .articles)
                
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
                    mps = try container.decode(Bool.self, forKey: .mps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentLocationId = try container.decode(Int.self, forKey: .fulfillmentLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartners = try container.decode([ShipmentsCourierPartner].self, forKey: .courierPartners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(packaging, forKey: .packaging)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOption, forKey: .fulfillmentOption)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            
            try? container.encodeIfPresent(isAutoAssign, forKey: .isAutoAssign)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(isEwaybillEnabled, forKey: .isEwaybillEnabled)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(mps, forKey: .mps)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentLocationId, forKey: .fulfillmentLocationId)
            
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
        }
        
    }
}


