

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SendSmsPayload
         Used By: Order
     */

    class SendSmsPayload: Codable {
        public var bagId: Int

        public var slug: String

        public var data: SmsDataPayload?

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case slug

            case data
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.bagId = bagId

            self.slug = slug

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SendSmsPayload
         Used By: Order
     */

    class SendSmsPayload: Codable {
        public var bagId: Int

        public var slug: String

        public var data: SmsDataPayload?

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case slug

            case data
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.bagId = bagId

            self.slug = slug

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
