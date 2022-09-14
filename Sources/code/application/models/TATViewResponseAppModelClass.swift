

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewResponse
         Used By: Logistic
     */
    class TATViewResponse: Codable {
        public var success: Bool

        public var error: TATError

        public var isCodAvailable: Bool

        public var journey: String

        public var identifier: String

        public var paymentMode: String

        public var source: String

        public var toPincode: String

        public var locationDetails: [LocationDetailsResponse]?

        public var requestUuid: String

        public var toCity: String

        public var action: String

        public var stormbreakerUuid: String

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case isCodAvailable = "is_cod_available"

            case journey

            case identifier

            case paymentMode = "payment_mode"

            case source

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case requestUuid = "request_uuid"

            case toCity = "to_city"

            case action

            case stormbreakerUuid = "stormbreaker_uuid"
        }

        public init(action: String, error: TATError, identifier: String, isCodAvailable: Bool, journey: String, locationDetails: [LocationDetailsResponse]? = nil, paymentMode: String, requestUuid: String, source: String, stormbreakerUuid: String, success: Bool, toCity: String, toPincode: String) {
            self.success = success

            self.error = error

            self.isCodAvailable = isCodAvailable

            self.journey = journey

            self.identifier = identifier

            self.paymentMode = paymentMode

            self.source = source

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.requestUuid = requestUuid

            self.toCity = toCity

            self.action = action

            self.stormbreakerUuid = stormbreakerUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(TATError.self, forKey: .error)

            isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)

            journey = try container.decode(String.self, forKey: .journey)

            identifier = try container.decode(String.self, forKey: .identifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            source = try container.decode(String.self, forKey: .source)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode([LocationDetailsResponse].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            toCity = try container.decode(String.self, forKey: .toCity)

            action = try container.decode(String.self, forKey: .action)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(toCity, forKey: .toCity)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
        }
    }
}
