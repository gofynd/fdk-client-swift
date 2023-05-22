

import Foundation

public extension PlatformClient.Logistics {
    /*
         Model: GetZoneDataViewChannels
         Used By: Logistics
     */

    class GetZoneDataViewChannels: Codable {
        public var channelType: String

        public var channelId: String

        public enum CodingKeys: String, CodingKey {
            case channelType = "channel_type"

            case channelId = "channel_id"
        }

        public init(channelId: String, channelType: String) {
            self.channelType = channelType

            self.channelId = channelId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelType = try container.decode(String.self, forKey: .channelType)

            channelId = try container.decode(String.self, forKey: .channelId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(channelId, forKey: .channelId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistics {
    /*
         Model: GetZoneDataViewChannels
         Used By: Logistics
     */

    class GetZoneDataViewChannels: Codable {
        public var channelType: String

        public var channelId: String

        public enum CodingKeys: String, CodingKey {
            case channelType = "channel_type"

            case channelId = "channel_id"
        }

        public init(channelId: String, channelType: String) {
            self.channelType = channelType

            self.channelId = channelId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelType = try container.decode(String.self, forKey: .channelType)

            channelId = try container.decode(String.self, forKey: .channelId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(channelId, forKey: .channelId)
        }
    }
}
