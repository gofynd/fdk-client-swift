

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationServiceabilityConfig
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfig: Codable {
        public var channelType: String

        public var serviceabilityType: String

        public var channelId: String

        public enum CodingKeys: String, CodingKey {
            case channelType = "channel_type"

            case serviceabilityType = "serviceability_type"

            case channelId = "channel_id"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.channelType = channelType

            self.serviceabilityType = serviceabilityType

            self.channelId = channelId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelType = try container.decode(String.self, forKey: .channelType)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)

            channelId = try container.decode(String.self, forKey: .channelId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)

            try? container.encodeIfPresent(channelId, forKey: .channelId)
        }
    }
}
