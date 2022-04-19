import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPincodeZonesResponse
         Used By: Logistic
     */
    class GetPincodeZonesResponse: Codable {
        public var zones: [[String: Any]]

        public var serviceabilityType: String

        public enum CodingKeys: String, CodingKey {
            case zones

            case serviceabilityType = "serviceability_type"
        }

        public init(serviceabilityType: String, zones: [[String: Any]]) {
            self.zones = zones

            self.serviceabilityType = serviceabilityType
        }

        public func duplicate() -> GetPincodeZonesResponse {
            let dict = self.dictionary!
            let copy = GetPincodeZonesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zones = try container.decode([[String: Any]].self, forKey: .zones)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zones, forKey: .zones)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
        }
    }
}
