

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationTimingSerializer
         Used By: CompanyProfile
     */

    class LocationTimingSerializer: Codable {
        public var hour: Int

        public var minute: Int

        public enum CodingKeys: String, CodingKey {
            case hour

            case minute
        }

        public init(hour: Int, minute: Int) {
            self.hour = hour

            self.minute = minute
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hour = try container.decode(Int.self, forKey: .hour)

            minute = try container.decode(Int.self, forKey: .minute)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hour, forKey: .hour)

            try? container.encodeIfPresent(minute, forKey: .minute)
        }
    }
}
