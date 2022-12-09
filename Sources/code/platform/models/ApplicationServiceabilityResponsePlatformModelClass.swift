

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationServiceabilityResponse
         Used By: Serviceability
     */

    class ApplicationServiceabilityResponse: Codable {
        public var serviceabilityType: String

        public var channelId: String

        public var channelType: String

        public enum CodingKeys: String, CodingKey {
            case serviceabilityType = "serviceability_type"

            case channelId = "channel_id"

            case channelType = "channel_type"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.serviceabilityType = serviceabilityType

            self.channelId = channelId

            self.channelType = channelType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)

            channelId = try container.decode(String.self, forKey: .channelId)

            channelType = try container.decode(String.self, forKey: .channelType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)

            try? container.encodeIfPresent(channelId, forKey: .channelId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)
        }
    }
}
