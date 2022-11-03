

import Foundation
public extension ApplicationClient {
    /*
         Model: ReqBodyPresignedPOST
         Used By: Order
     */
    class ReqBodyPresignedPOST: Codable {
        public var event: String

        public var mediaType: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case event

            case mediaType = "media_type"
        }

        public init(event: String, mediaType: [[String: Any]]) {
            self.event = event

            self.mediaType = mediaType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            event = try container.decode(String.self, forKey: .event)

            mediaType = try container.decode([[String: Any]].self, forKey: .mediaType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(event, forKey: .event)

            try? container.encodeIfPresent(mediaType, forKey: .mediaType)
        }
    }
}
