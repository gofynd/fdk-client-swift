

import Foundation
public extension ApplicationClient {
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

            case error

            case toCity = "to_city"

            case source

            case toPincode = "to_pincode"

            case action

            case stormbreakerUuid = "stormbreaker_uuid"

            case success

            case identifier

            case journey
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
}
