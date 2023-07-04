

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: AverageOrderProcessingTime
         Used By: CompanyProfile
     */

    class AverageOrderProcessingTime: Codable {
        public var durationType: String

        public var duration: Int

        public enum CodingKeys: String, CodingKey {
            case durationType = "duration_type"

            case duration
        }

        public init(duration: Int, durationType: String) {
            self.durationType = durationType

            self.duration = duration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            durationType = try container.decode(String.self, forKey: .durationType)

            duration = try container.decode(Int.self, forKey: .duration)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(durationType, forKey: .durationType)

            try? container.encodeIfPresent(duration, forKey: .duration)
        }
    }
}
