

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewRequest
         Used By: Logistic
     */
    class TATViewRequest: Codable {
        public var journey: String

        public var identifier: String

        public var source: String

        public var toPincode: String

        public var locationDetails: [LocationDetails]?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case journey

            case identifier

            case source

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case action
        }

        public init(action: String, identifier: String, journey: String, locationDetails: [LocationDetails]? = nil, source: String, toPincode: String) {
            self.journey = journey

            self.identifier = identifier

            self.source = source

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journey = try container.decode(String.self, forKey: .journey)

            identifier = try container.decode(String.self, forKey: .identifier)

            source = try container.decode(String.self, forKey: .source)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode([LocationDetails].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
