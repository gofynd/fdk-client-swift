

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationServiceabilityConfig
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfig: Codable {
        public var channelId: String

        public var channelType: String

        public var serviceabilityType: String

        public enum CodingKeys: String, CodingKey {
            case channelId = "channel_id"

            case channelType = "channel_type"

            case serviceabilityType = "serviceability_type"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.channelId = channelId

            self.channelType = channelType

            self.serviceabilityType = serviceabilityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelId = try container.decode(String.self, forKey: .channelId)

            channelType = try container.decode(String.self, forKey: .channelType)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelId, forKey: .channelId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ApplicationServiceabilityConfig
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfig: Codable {
        public var channelId: String

        public var channelType: String

        public var serviceabilityType: String

        public enum CodingKeys: String, CodingKey {
            case channelId = "channel_id"

            case channelType = "channel_type"

            case serviceabilityType = "serviceability_type"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.channelId = channelId

            self.channelType = channelType

            self.serviceabilityType = serviceabilityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelId = try container.decode(String.self, forKey: .channelId)

            channelType = try container.decode(String.self, forKey: .channelType)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelId, forKey: .channelId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
        }
    }
}
