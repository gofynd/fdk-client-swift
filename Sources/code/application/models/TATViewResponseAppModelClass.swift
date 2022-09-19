

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewResponse
         Used By: Logistic
     */
    class TATViewResponse: Codable {
        public var toPincode: String

        public var requestUuid: String

        public var paymentMode: String

        public var locationDetails: [TATLocationDetailsResponse]?

        public var success: Bool

        public var action: String

        public var source: String

        public var journey: String

        public var stormbreakerUuid: String

        public var isCodAvailable: Bool

        public var error: TATErrorSchemaResponse

        public var identifier: String

        public var toCity: String

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case requestUuid = "request_uuid"

            case paymentMode = "payment_mode"

            case locationDetails = "location_details"

            case success

            case action

            case source

            case journey

            case stormbreakerUuid = "stormbreaker_uuid"

            case isCodAvailable = "is_cod_available"

            case error

            case identifier

            case toCity = "to_city"
        }

        public init(action: String, error: TATErrorSchemaResponse, identifier: String, isCodAvailable: Bool, journey: String, locationDetails: [TATLocationDetailsResponse]? = nil, paymentMode: String, requestUuid: String, source: String, stormbreakerUuid: String, success: Bool, toCity: String, toPincode: String) {
            self.toPincode = toPincode

            self.requestUuid = requestUuid

            self.paymentMode = paymentMode

            self.locationDetails = locationDetails

            self.success = success

            self.action = action

            self.source = source

            self.journey = journey

            self.stormbreakerUuid = stormbreakerUuid

            self.isCodAvailable = isCodAvailable

            self.error = error

            self.identifier = identifier

            self.toCity = toCity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                locationDetails = try container.decode([TATLocationDetailsResponse].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)

            journey = try container.decode(String.self, forKey: .journey)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)

            error = try container.decode(TATErrorSchemaResponse.self, forKey: .error)

            identifier = try container.decode(String.self, forKey: .identifier)

            toCity = try container.decode(String.self, forKey: .toCity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)

            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toCity, forKey: .toCity)
        }
    }
}
