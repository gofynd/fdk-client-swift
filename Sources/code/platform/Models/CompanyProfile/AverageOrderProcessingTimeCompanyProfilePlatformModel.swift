

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: AverageOrderProcessingTime
         Used By: CompanyProfile
     */

    class AverageOrderProcessingTime: Codable {
        public var duration: Int

        public var durationType: String

        public enum CodingKeys: String, CodingKey {
            case duration

            case durationType = "duration_type"
        }

        public init(duration: Int, durationType: String) {
            self.duration = duration

            self.durationType = durationType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            duration = try container.decode(Int.self, forKey: .duration)

            durationType = try container.decode(String.self, forKey: .durationType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(durationType, forKey: .durationType)
        }
    }
}
