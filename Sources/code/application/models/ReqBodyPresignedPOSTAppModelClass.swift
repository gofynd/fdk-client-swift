

import Foundation
public extension ApplicationClient {
    /*
         Model: ReqBodyPresignedPOST
         Used By: Order
     */
    class ReqBodyPresignedPOST: Codable {
        public var event: String

        public var mediaType: [[String: Any]]

        public var expiresIn: Int?

        public enum CodingKeys: String, CodingKey {
            case event

            case mediaType = "media_type"

            case expiresIn = "expires_in"
        }

        public init(event: String, expiresIn: Int? = nil, mediaType: [[String: Any]]) {
            self.event = event

            self.mediaType = mediaType

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            event = try container.decode(String.self, forKey: .event)

            mediaType = try container.decode([[String: Any]].self, forKey: .mediaType)

            do {
                expiresIn = try container.decode(Int.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(event, forKey: .event)

            try? container.encodeIfPresent(mediaType, forKey: .mediaType)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}
