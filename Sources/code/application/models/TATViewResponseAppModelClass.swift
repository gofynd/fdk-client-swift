

import Foundation
public extension ApplicationClient {
    /*
        Model: TATViewResponse
        Used By: Logistic
    */
    class TATViewResponse: Codable {
        
        public var stormbreakerUuid: String?
        
        public var source: String?
        
        public var locationDetails: [TATLocationDetailsResponse]?
        
        public var toCity: String?
        
        public var toPincode: String?
        
        public var requestUuid: String?
        
        public var paymentMode: String?
        
        public var isCodAvailable: Bool?
        
        public var error: TATErrorSchemaResponse?
        
        public var identifier: String?
        
        public var journey: String?
        
        public var action: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case stormbreakerUuid = "stormbreaker_uuid"
            
            case source = "source"
            
            case locationDetails = "location_details"
            
            case toCity = "to_city"
            
            case toPincode = "to_pincode"
            
            case requestUuid = "request_uuid"
            
            case paymentMode = "payment_mode"
            
            case isCodAvailable = "is_cod_available"
            
            case error = "error"
            
            case identifier = "identifier"
            
            case journey = "journey"
            
            case action = "action"
            
            case success = "success"
            
        }

        public init(action: String? = nil, error: TATErrorSchemaResponse? = nil, identifier: String? = nil, isCodAvailable: Bool? = nil, journey: String? = nil, locationDetails: [TATLocationDetailsResponse]? = nil, paymentMode: String? = nil, requestUuid: String? = nil, source: String? = nil, stormbreakerUuid: String? = nil, success: Bool? = nil, toCity: String? = nil, toPincode: String? = nil) {
            
            self.stormbreakerUuid = stormbreakerUuid
            
            self.source = source
            
            self.locationDetails = locationDetails
            
            self.toCity = toCity
            
            self.toPincode = toPincode
            
            self.requestUuid = requestUuid
            
            self.paymentMode = paymentMode
            
            self.isCodAvailable = isCodAvailable
            
            self.error = error
            
            self.identifier = identifier
            
            self.journey = journey
            
            self.action = action
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
            
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
                locationDetails = try container.decode([TATLocationDetailsResponse].self, forKey: .locationDetails)
            
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
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(TATErrorSchemaResponse.self, forKey: .error)
            
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
                journey = try container.decode(String.self, forKey: .journey)
            
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
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
            
            
            
            
            try? container.encodeIfPresent(toCity, forKey: .toCity)
            
            
            
            
            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
            
            
            
            
            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
