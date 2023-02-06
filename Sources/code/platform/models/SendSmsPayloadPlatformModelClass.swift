

import Foundation
public extension PlatformClient {
    /*
         Model: SendSmsPayload
         Used By: OrderManage
     */

    class SendSmsPayload: Codable {
        public var slug: String

        public var bagId: Int

        public var data: SmsDataPayload?

        public enum CodingKeys: String, CodingKey {
            case slug

            case bagId = "bag_id"

            case data
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.slug = slug

            self.bagId = bagId

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
