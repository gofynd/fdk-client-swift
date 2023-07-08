

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationTimingSerializer
         Used By: CompanyProfile
     */

    class LocationTimingSerializer: Codable {
        public var minute: Int

        public var hour: Int

        public enum CodingKeys: String, CodingKey {
            case minute

            case hour
        }

        public init(hour: Int, minute: Int) {
            self.minute = minute

            self.hour = hour
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            minute = try container.decode(Int.self, forKey: .minute)

            hour = try container.decode(Int.self, forKey: .hour)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minute, forKey: .minute)

            try? container.encodeIfPresent(hour, forKey: .hour)
        }
    }
}
