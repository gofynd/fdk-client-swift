import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetZoneDataViewChannels
         Used By: Serviceability
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

        public func duplicate() -> GetZoneDataViewChannels {
            let dict = self.dictionary!
            let copy = GetZoneDataViewChannels(dictionary: dict)!
            return copy
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
