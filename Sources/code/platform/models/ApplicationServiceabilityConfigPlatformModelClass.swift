

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationServiceabilityConfig
         Used By: Logistic
     */

    class ApplicationServiceabilityConfig: Codable {
        public var serviceabilityType: String

        public var channelType: String

        public var channelId: String

        public enum CodingKeys: String, CodingKey {
            case serviceabilityType = "serviceability_type"

            case channelType = "channel_type"

            case channelId = "channel_id"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.serviceabilityType = serviceabilityType

            self.channelType = channelType

            self.channelId = channelId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)

            channelType = try container.decode(String.self, forKey: .channelType)

            channelId = try container.decode(String.self, forKey: .channelId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(channelId, forKey: .channelId)
        }
    }
}
