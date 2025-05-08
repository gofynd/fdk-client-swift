

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATViewResult
        Used By: Logistic
    */
    class TATViewResult: Codable {
        
        public var toPincode: String?
        
        public var requestUuid: String?
        
        public var paymentMode: String?
        
        public var success: Bool?
        
        public var error: TATErrorSchemaResult?
        
        public var isCodAvailable: Bool?
        
        public var source: String?
        
        public var action: String?
        
        public var stormbreakerUuid: String?
        
        public var toCity: String?
        
        public var identifier: String?
        
        public var locationDetails: [TATLocationDetailsResult]?
        
        public var journey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toPincode = "to_pincode"
            
            case requestUuid = "request_uuid"
            
            case paymentMode = "payment_mode"
            
            case success = "success"
            
            case error = "error"
            
            case isCodAvailable = "is_cod_available"
            
            case source = "source"
            
            case action = "action"
            
            case stormbreakerUuid = "stormbreaker_uuid"
            
            case toCity = "to_city"
            
            case identifier = "identifier"
            
            case locationDetails = "location_details"
            
            case journey = "journey"
            
        }

        public init(action: String? = nil, error: TATErrorSchemaResult? = nil, identifier: String? = nil, isCodAvailable: Bool? = nil, journey: String? = nil, locationDetails: [TATLocationDetailsResult]? = nil, paymentMode: String? = nil, requestUuid: String? = nil, source: String? = nil, stormbreakerUuid: String? = nil, success: Bool? = nil, toCity: String? = nil, toPincode: String? = nil) {
            
            self.toPincode = toPincode
            
            self.requestUuid = requestUuid
            
            self.paymentMode = paymentMode
            
            self.success = success
            
            self.error = error
            
            self.isCodAvailable = isCodAvailable
            
            self.source = source
            
            self.action = action
            
            self.stormbreakerUuid = stormbreakerUuid
            
            self.toCity = toCity
            
            self.identifier = identifier
            
            self.locationDetails = locationDetails
            
            self.journey = journey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                toPincode = try container.decode(String.self, forKey: .toPincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(TATErrorSchemaResult.self, forKey: .error)
            
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
                source = try container.decode(String.self, forKey: .source)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                action = try container.decode(String.self, forKey: .action)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                toCity = try container.decode(String.self, forKey: .toCity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                identifier = try container.decode(String.self, forKey: .identifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                locationDetails = try container.decode([TATLocationDetailsResult].self, forKey: .locationDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                journey = try container.decode(String.self, forKey: .journey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
            
            
            
            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
            
            
            
            try? container.encodeIfPresent(toCity, forKey: .toCity)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
        }
        
    }
}
