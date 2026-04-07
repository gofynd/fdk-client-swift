

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerShipments
        Used By: Serviceability
    */

    class CourierPartnerShipments: Codable {
        
        
        public var promise: PromiseObject?
        
        public var isCodAvailable: Bool?
        
        public var isAutoAssign: Bool?
        
        public var meta: CourierPartnerShipmentsMeta?
        
        public var volumetricWeight: Int?
        
        public var weight: Int?
        
        public var courierPartners: [ShipmentCourierPartnersResult]?
        
        public var fulfillmentId: Int
        
        public var fulfillmentType: String
        
        public var fulfillmentTags: [String]
        
        public var fromServiceability: LocationDetailsServiceability
        
        public var articles: [CourierPartnerShipmentsArticles]
        
        public var isMto: Bool
        
        public var ignoreSchemeIds: [String]
        
        public var error: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case promise = "promise"
            
            case isCodAvailable = "is_cod_available"
            
            case isAutoAssign = "is_auto_assign"
            
            case meta = "meta"
            
            case volumetricWeight = "volumetric_weight"
            
            case weight = "weight"
            
            case courierPartners = "courier_partners"
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentType = "fulfillment_type"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fromServiceability = "from_serviceability"
            
            case articles = "articles"
            
            case isMto = "is_mto"
            
            case ignoreSchemeIds = "ignore_scheme_ids"
            
            case error = "error"
            
        }

        public init(articles: [CourierPartnerShipmentsArticles], courierPartners: [ShipmentCourierPartnersResult]? = nil, error: [String: Any]? = nil, fromServiceability: LocationDetailsServiceability, fulfillmentId: Int, fulfillmentTags: [String], fulfillmentType: String, ignoreSchemeIds: [String], isAutoAssign: Bool? = nil, isCodAvailable: Bool? = nil, isMto: Bool, meta: CourierPartnerShipmentsMeta? = nil, promise: PromiseObject? = nil, volumetricWeight: Int? = nil, weight: Int? = nil) {
            
            self.promise = promise
            
            self.isCodAvailable = isCodAvailable
            
            self.isAutoAssign = isAutoAssign
            
            self.meta = meta
            
            self.volumetricWeight = volumetricWeight
            
            self.weight = weight
            
            self.courierPartners = courierPartners
            
            self.fulfillmentId = fulfillmentId
            
            self.fulfillmentType = fulfillmentType
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fromServiceability = fromServiceability
            
            self.articles = articles
            
            self.isMto = isMto
            
            self.ignoreSchemeIds = ignoreSchemeIds
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    promise = try container.decode(PromiseObject.self, forKey: .promise)
                
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
                
            
            
                do {
                    isAutoAssign = try container.decode(Bool.self, forKey: .isAutoAssign)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CourierPartnerShipmentsMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    volumetricWeight = try container.decode(Int.self, forKey: .volumetricWeight)
                
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
                    courierPartners = try container.decode([ShipmentCourierPartnersResult].self, forKey: .courierPartners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
            
            
            
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
            
            
            
                fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
                
            
            
            
                fromServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .fromServiceability)
                
            
            
            
                articles = try container.decode([CourierPartnerShipmentsArticles].self, forKey: .articles)
                
            
            
            
                isMto = try container.decode(Bool.self, forKey: .isMto)
                
            
            
            
                ignoreSchemeIds = try container.decode([String].self, forKey: .ignoreSchemeIds)
                
            
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(isAutoAssign, forKey: .isAutoAssign)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(fromServiceability, forKey: .fromServiceability)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(ignoreSchemeIds, forKey: .ignoreSchemeIds)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerShipments
        Used By: Serviceability
    */

    class CourierPartnerShipments: Codable {
        
        
        public var promise: PromiseObject?
        
        public var isCodAvailable: Bool?
        
        public var isAutoAssign: Bool?
        
        public var meta: CourierPartnerShipmentsMeta?
        
        public var volumetricWeight: Int?
        
        public var weight: Int?
        
        public var courierPartners: [ShipmentCourierPartnersResult]?
        
        public var fulfillmentId: Int
        
        public var fulfillmentType: String
        
        public var fulfillmentTags: [String]
        
        public var fromServiceability: LocationDetailsServiceability
        
        public var articles: [CourierPartnerShipmentsArticles]
        
        public var isMto: Bool
        
        public var ignoreSchemeIds: [String]
        
        public var error: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case promise = "promise"
            
            case isCodAvailable = "is_cod_available"
            
            case isAutoAssign = "is_auto_assign"
            
            case meta = "meta"
            
            case volumetricWeight = "volumetric_weight"
            
            case weight = "weight"
            
            case courierPartners = "courier_partners"
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentType = "fulfillment_type"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fromServiceability = "from_serviceability"
            
            case articles = "articles"
            
            case isMto = "is_mto"
            
            case ignoreSchemeIds = "ignore_scheme_ids"
            
            case error = "error"
            
        }

        public init(articles: [CourierPartnerShipmentsArticles], courierPartners: [ShipmentCourierPartnersResult]? = nil, error: [String: Any]? = nil, fromServiceability: LocationDetailsServiceability, fulfillmentId: Int, fulfillmentTags: [String], fulfillmentType: String, ignoreSchemeIds: [String], isAutoAssign: Bool? = nil, isCodAvailable: Bool? = nil, isMto: Bool, meta: CourierPartnerShipmentsMeta? = nil, promise: PromiseObject? = nil, volumetricWeight: Int? = nil, weight: Int? = nil) {
            
            self.promise = promise
            
            self.isCodAvailable = isCodAvailable
            
            self.isAutoAssign = isAutoAssign
            
            self.meta = meta
            
            self.volumetricWeight = volumetricWeight
            
            self.weight = weight
            
            self.courierPartners = courierPartners
            
            self.fulfillmentId = fulfillmentId
            
            self.fulfillmentType = fulfillmentType
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fromServiceability = fromServiceability
            
            self.articles = articles
            
            self.isMto = isMto
            
            self.ignoreSchemeIds = ignoreSchemeIds
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    promise = try container.decode(PromiseObject.self, forKey: .promise)
                
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
                
            
            
                do {
                    isAutoAssign = try container.decode(Bool.self, forKey: .isAutoAssign)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CourierPartnerShipmentsMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    volumetricWeight = try container.decode(Int.self, forKey: .volumetricWeight)
                
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
                    courierPartners = try container.decode([ShipmentCourierPartnersResult].self, forKey: .courierPartners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
            
            
            
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
            
            
            
                fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
                
            
            
            
                fromServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .fromServiceability)
                
            
            
            
                articles = try container.decode([CourierPartnerShipmentsArticles].self, forKey: .articles)
                
            
            
            
                isMto = try container.decode(Bool.self, forKey: .isMto)
                
            
            
            
                ignoreSchemeIds = try container.decode([String].self, forKey: .ignoreSchemeIds)
                
            
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(isAutoAssign, forKey: .isAutoAssign)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(fromServiceability, forKey: .fromServiceability)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(ignoreSchemeIds, forKey: .ignoreSchemeIds)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


