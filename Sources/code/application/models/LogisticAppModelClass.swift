import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: GetPincodeCityResponse
            Used By: Logistic
        */
        class GetPincodeCityResponse: Codable {
            
            public var requestUuid: String
            
            public var stormbreakerUuid: String
            
            public var success: Bool
            
            public var data: [LogisticPincodeData]
            

            public enum CodingKeys: String, CodingKey {
                
                case requestUuid = "request_uuid"
                
                case stormbreakerUuid = "stormbreaker_uuid"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [LogisticPincodeData], requestUuid: String, stormbreakerUuid: String, success: Bool) {
                
                self.requestUuid = requestUuid
                
                self.stormbreakerUuid = stormbreakerUuid
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> GetPincodeCityResponse {
                let dict = self.dictionary!
                let copy = GetPincodeCityResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
                
                
                
                
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode([LogisticPincodeData].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
                
                
                
                
                try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: LogisticPincodeData
            Used By: Logistic
        */
        class LogisticPincodeData: Codable {
            
            public var meta: LogisticMeta?
            
            public var parents: [LogisticParents]?
            
            public var subType: String?
            
            public var name: String?
            
            public var error: LogisticError?
            
            public var uid: String?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case parents = "parents"
                
                case subType = "sub_type"
                
                case name = "name"
                
                case error = "error"
                
                case uid = "uid"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String?, error: LogisticError?, meta: LogisticMeta?, name: String?, parents: [LogisticParents]?, subType: String?, uid: String?) {
                
                self.meta = meta
                
                self.parents = parents
                
                self.subType = subType
                
                self.name = name
                
                self.error = error
                
                self.uid = uid
                
                self.displayName = displayName
                
            }

            public func duplicate() -> LogisticPincodeData {
                let dict = self.dictionary!
                let copy = LogisticPincodeData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    meta = try container.decode(LogisticMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    parents = try container.decode([LogisticParents].self, forKey: .parents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    error = try container.decode(LogisticError.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(parents, forKey: .parents)
                
                
                
                
                try? container.encodeIfPresent(subType, forKey: .subType)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: LogisticMeta
            Used By: Logistic
        */
        class LogisticMeta: Codable {
            
            public var zone: String?
            
            public var deliverables: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case zone = "zone"
                
                case deliverables = "deliverables"
                
            }

            public init(deliverables: [[String: Any]]?, zone: String?) {
                
                self.zone = zone
                
                self.deliverables = deliverables
                
            }

            public func duplicate() -> LogisticMeta {
                let dict = self.dictionary!
                let copy = LogisticMeta(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    zone = try container.decode(String.self, forKey: .zone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliverables = try container.decode([[String: Any]].self, forKey: .deliverables)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(zone, forKey: .zone)
                
                
                
                
                try? container.encodeIfPresent(deliverables, forKey: .deliverables)
                
                
            }
            
        }
        
        /*
            Model: LogisticParents
            Used By: Logistic
        */
        class LogisticParents: Codable {
            
            public var subType: String?
            
            public var name: String?
            
            public var displayName: String?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case subType = "sub_type"
                
                case name = "name"
                
                case displayName = "display_name"
                
                case uid = "uid"
                
            }

            public init(displayName: String?, name: String?, subType: String?, uid: String?) {
                
                self.subType = subType
                
                self.name = name
                
                self.displayName = displayName
                
                self.uid = uid
                
            }

            public func duplicate() -> LogisticParents {
                let dict = self.dictionary!
                let copy = LogisticParents(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(subType, forKey: .subType)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: LogisticError
            Used By: Logistic
        */
        class LogisticError: Codable {
            
            public var type: String?
            
            public var value: String?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case value = "value"
                
                case message = "message"
                
            }

            public init(message: String?, type: String?, value: String?) {
                
                self.type = type
                
                self.value = value
                
                self.message = message
                
            }

            public func duplicate() -> LogisticError {
                let dict = self.dictionary!
                let copy = LogisticError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: GetTatProductReqBody
            Used By: Logistic
        */
        class GetTatProductReqBody: Codable {
            
            public var locationDetails: [LocationDetailsReq]
            
            public var toPincode: String
            
            public var action: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case locationDetails = "location_details"
                
                case toPincode = "to_pincode"
                
                case action = "action"
                
            }

            public init(action: String?, locationDetails: [LocationDetailsReq], toPincode: String) {
                
                self.locationDetails = locationDetails
                
                self.toPincode = toPincode
                
                self.action = action
                
            }

            public func duplicate() -> GetTatProductReqBody {
                let dict = self.dictionary!
                let copy = GetTatProductReqBody(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                locationDetails = try container.decode([LocationDetailsReq].self, forKey: .locationDetails)
                
                
                
                
                toPincode = try container.decode(String.self, forKey: .toPincode)
                
                
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
                
                
                
                
                try? container.encodeIfPresent(toPincode, forKey: .toPincode)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
            }
            
        }
        
        /*
            Model: LocationDetailsReq
            Used By: Logistic
        */
        class LocationDetailsReq: Codable {
            
            public var fromPincode: String?
            
            public var articles: [TatReqProductArticles]?
            
            public var fulfillmentId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case fromPincode = "from_pincode"
                
                case articles = "articles"
                
                case fulfillmentId = "fulfillment_id"
                
            }

            public init(articles: [TatReqProductArticles]?, fromPincode: String?, fulfillmentId: Int?) {
                
                self.fromPincode = fromPincode
                
                self.articles = articles
                
                self.fulfillmentId = fulfillmentId
                
            }

            public func duplicate() -> LocationDetailsReq {
                let dict = self.dictionary!
                let copy = LocationDetailsReq(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fromPincode = try container.decode(String.self, forKey: .fromPincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articles = try container.decode([TatReqProductArticles].self, forKey: .articles)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)
                
                
                
                
                try? container.encodeIfPresent(articles, forKey: .articles)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                
            }
            
        }
        
        /*
            Model: TatReqProductArticles
            Used By: Logistic
        */
        class TatReqProductArticles: Codable {
            
            public var category: LogisticRequestCategory?
            

            public enum CodingKeys: String, CodingKey {
                
                case category = "category"
                
            }

            public init(category: LogisticRequestCategory?) {
                
                self.category = category
                
            }

            public func duplicate() -> TatReqProductArticles {
                let dict = self.dictionary!
                let copy = TatReqProductArticles(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    category = try container.decode(LogisticRequestCategory.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(category, forKey: .category)
                
                
            }
            
        }
        
        /*
            Model: LogisticRequestCategory
            Used By: Logistic
        */
        class LogisticRequestCategory: Codable {
            
            public var id: Int?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case level = "level"
                
            }

            public init(id: Int?, level: String?) {
                
                self.id = id
                
                self.level = level
                
            }

            public func duplicate() -> LogisticRequestCategory {
                let dict = self.dictionary!
                let copy = LogisticRequestCategory(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
            }
            
        }
        
        /*
            Model: GetTatProductResponse
            Used By: Logistic
        */
        class GetTatProductResponse: Codable {
            
            public var locationDetails: [LocationDetails]
            
            public var requestUuid: String
            
            public var error: [String: Any]
            
            public var toCity: String
            
            public var source: String
            
            public var toPincode: String
            
            public var action: String
            
            public var stormbreakerUuid: String
            
            public var success: Bool
            
            public var identifier: String
            
            public var journey: String
            

            public enum CodingKeys: String, CodingKey {
                
                case locationDetails = "location_details"
                
                case requestUuid = "request_uuid"
                
                case error = "error"
                
                case toCity = "to_city"
                
                case source = "source"
                
                case toPincode = "to_pincode"
                
                case action = "action"
                
                case stormbreakerUuid = "stormbreaker_uuid"
                
                case success = "success"
                
                case identifier = "identifier"
                
                case journey = "journey"
                
            }

            public init(action: String, error: [String: Any], identifier: String, journey: String, locationDetails: [LocationDetails], requestUuid: String, source: String, stormbreakerUuid: String, success: Bool, toCity: String, toPincode: String) {
                
                self.locationDetails = locationDetails
                
                self.requestUuid = requestUuid
                
                self.error = error
                
                self.toCity = toCity
                
                self.source = source
                
                self.toPincode = toPincode
                
                self.action = action
                
                self.stormbreakerUuid = stormbreakerUuid
                
                self.success = success
                
                self.identifier = identifier
                
                self.journey = journey
                
            }

            public func duplicate() -> GetTatProductResponse {
                let dict = self.dictionary!
                let copy = GetTatProductResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                locationDetails = try container.decode([LocationDetails].self, forKey: .locationDetails)
                
                
                
                
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
                
                
                
                
                error = try container.decode([String: Any].self, forKey: .error)
                
                
                
                
                toCity = try container.decode(String.self, forKey: .toCity)
                
                
                
                
                source = try container.decode(String.self, forKey: .source)
                
                
                
                
                toPincode = try container.decode(String.self, forKey: .toPincode)
                
                
                
                
                action = try container.decode(String.self, forKey: .action)
                
                
                
                
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                identifier = try container.decode(String.self, forKey: .identifier)
                
                
                
                
                journey = try container.decode(String.self, forKey: .journey)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
                
                
                
                
                try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(toCity, forKey: .toCity)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(toPincode, forKey: .toPincode)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
                
                
                try? container.encodeIfPresent(journey, forKey: .journey)
                
                
            }
            
        }
        
        /*
            Model: LocationDetails
            Used By: Logistic
        */
        class LocationDetails: Codable {
            
            public var fromPincode: String?
            
            public var articles: [TatProductArticles]?
            
            public var fulfillmentId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case fromPincode = "from_pincode"
                
                case articles = "articles"
                
                case fulfillmentId = "fulfillment_id"
                
            }

            public init(articles: [TatProductArticles]?, fromPincode: String?, fulfillmentId: Int?) {
                
                self.fromPincode = fromPincode
                
                self.articles = articles
                
                self.fulfillmentId = fulfillmentId
                
            }

            public func duplicate() -> LocationDetails {
                let dict = self.dictionary!
                let copy = LocationDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fromPincode = try container.decode(String.self, forKey: .fromPincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articles = try container.decode([TatProductArticles].self, forKey: .articles)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)
                
                
                
                
                try? container.encodeIfPresent(articles, forKey: .articles)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                
            }
            
        }
        
        /*
            Model: TatProductArticles
            Used By: Logistic
        */
        class TatProductArticles: Codable {
            
            public var error: [String: Any]?
            
            public var category: LogisticResponseCategory?
            
            public var promise: LogisticPromise?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case category = "category"
                
                case promise = "promise"
                
            }

            public init(category: LogisticResponseCategory?, error: [String: Any]?, promise: LogisticPromise?) {
                
                self.error = error
                
                self.category = category
                
                self.promise = promise
                
            }

            public func duplicate() -> TatProductArticles {
                let dict = self.dictionary!
                let copy = TatProductArticles(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    category = try container.decode(LogisticResponseCategory.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promise = try container.decode(LogisticPromise.self, forKey: .promise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(category, forKey: .category)
                
                
                
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                
            }
            
        }
        
        /*
            Model: LogisticResponseCategory
            Used By: Logistic
        */
        class LogisticResponseCategory: Codable {
            
            public var id: Int?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case level = "level"
                
            }

            public init(id: Int?, level: String?) {
                
                self.id = id
                
                self.level = level
                
            }

            public func duplicate() -> LogisticResponseCategory {
                let dict = self.dictionary!
                let copy = LogisticResponseCategory(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
            }
            
        }
        
        /*
            Model: LogisticPromise
            Used By: Logistic
        */
        class LogisticPromise: Codable {
            
            public var timestamp: LogisticTimestamp?
            
            public var formatted: Formatted?
            

            public enum CodingKeys: String, CodingKey {
                
                case timestamp = "timestamp"
                
                case formatted = "formatted"
                
            }

            public init(formatted: Formatted?, timestamp: LogisticTimestamp?) {
                
                self.timestamp = timestamp
                
                self.formatted = formatted
                
            }

            public func duplicate() -> LogisticPromise {
                let dict = self.dictionary!
                let copy = LogisticPromise(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    timestamp = try container.decode(LogisticTimestamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    formatted = try container.decode(Formatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                
                
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
                
            }
            
        }
        
        /*
            Model: LogisticTimestamp
            Used By: Logistic
        */
        class LogisticTimestamp: Codable {
            
            public var min: Int?
            
            public var max: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(max: Int?, min: Int?) {
                
                self.min = min
                
                self.max = max
                
            }

            public func duplicate() -> LogisticTimestamp {
                let dict = self.dictionary!
                let copy = LogisticTimestamp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
            }
            
        }
        
        /*
            Model: Formatted
            Used By: Logistic
        */
        class Formatted: Codable {
            
            public var min: String?
            
            public var max: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(max: String?, min: String?) {
                
                self.min = min
                
                self.max = max
                
            }

            public func duplicate() -> Formatted {
                let dict = self.dictionary!
                let copy = Formatted(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
            }
            
        }
        
}
