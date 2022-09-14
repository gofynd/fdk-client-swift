

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewRequest
         Used By: Logistic
     */
    class TATViewRequest: Codable {
        public var locationDetails: [LocationDetails]?

        public var identifier: String

        public var journey: String

        public var action: String

        public var toPincode: String

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case identifier

            case journey

            case action

            case toPincode = "to_pincode"

            case source
        }

        public init(action: String, identifier: String, journey: String, locationDetails: [LocationDetails]? = nil, source: String, toPincode: String) {
            self.locationDetails = locationDetails

            self.identifier = identifier

            self.journey = journey

            self.action = action

            self.toPincode = toPincode

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                locationDetails = try container.decode([LocationDetails].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

            journey = try container.decode(String.self, forKey: .journey)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
