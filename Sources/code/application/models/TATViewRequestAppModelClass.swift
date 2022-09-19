

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewRequest
         Used By: Logistic
     */
    class TATViewRequest: Codable {
        public var toPincode: String

        public var locationDetails: [TATLocationDetailsRequest]?

        public var action: String

        public var source: String

        public var journey: String

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case action

            case source

            case journey

            case identifier
        }

        public init(action: String, identifier: String, journey: String, locationDetails: [TATLocationDetailsRequest]? = nil, source: String, toPincode: String) {
            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.action = action

            self.source = source

            self.journey = journey

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode([TATLocationDetailsRequest].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)

            journey = try container.decode(String.self, forKey: .journey)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
