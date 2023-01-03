

import Foundation
public extension PlatformClient {
    /*
         Model: SendSmsPayload
         Used By: Order
     */

    class SendSmsPayload: Codable {
        public var data: SmsDataPayload?

        public var bagId: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case data

            case bagId = "bag_id"

            case slug
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.data = data

            self.bagId = bagId

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
