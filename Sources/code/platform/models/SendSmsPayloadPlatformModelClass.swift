

import Foundation
public extension PlatformClient {
    /*
         Model: SendSmsPayload
         Used By: Order
     */

    class SendSmsPayload: Codable {
        public var slug: String

        public var data: SmsDataPayload?

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case slug

            case data

            case bagId = "bag_id"
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.slug = slug

            self.data = data

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
