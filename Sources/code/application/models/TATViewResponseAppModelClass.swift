

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewResponse
         Used By: Logistic
     */
    class TATViewResponse: Codable {
        public var locationDetails: [LocationDetailsResponse]?

        public var identifier: String

        public var error: TATError

        public var requestUuid: String

        public var journey: String

        public var action: String

        public var paymentMode: String

        public var isCodAvailable: Bool

        public var success: Bool

        public var toPincode: String

        public var toCity: String

        public var source: String

        public var stormbreakerUuid: String

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case identifier

            case error

            case requestUuid = "request_uuid"

            case journey

            case action

            case paymentMode = "payment_mode"

            case isCodAvailable = "is_cod_available"

            case success

            case toPincode = "to_pincode"

            case toCity = "to_city"

            case source

            case stormbreakerUuid = "stormbreaker_uuid"
        }

        public init(action: String, error: TATError, identifier: String, isCodAvailable: Bool, journey: String, locationDetails: [LocationDetailsResponse]? = nil, paymentMode: String, requestUuid: String, source: String, stormbreakerUuid: String, success: Bool, toCity: String, toPincode: String) {
            self.locationDetails = locationDetails

            self.identifier = identifier

            self.error = error

            self.requestUuid = requestUuid

            self.journey = journey

            self.action = action

            self.paymentMode = paymentMode

            self.isCodAvailable = isCodAvailable

            self.success = success

            self.toPincode = toPincode

            self.toCity = toCity

            self.source = source

            self.stormbreakerUuid = stormbreakerUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                locationDetails = try container.decode([LocationDetailsResponse].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

            error = try container.decode(TATError.self, forKey: .error)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            journey = try container.decode(String.self, forKey: .journey)

            action = try container.decode(String.self, forKey: .action)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)

            success = try container.decode(Bool.self, forKey: .success)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            toCity = try container.decode(String.self, forKey: .toCity)

            source = try container.decode(String.self, forKey: .source)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(toCity, forKey: .toCity)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
        }
    }
}
