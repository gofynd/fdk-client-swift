

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SendSmsPayload
         Used By: Order
     */

    class SendSmsPayload: Codable {
        public var bagId: Int

        public var data: SmsDataPayload?

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case data

            case slug
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.bagId = bagId

            self.data = data

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(slug, forKey: .slug)
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

        public var data: SmsDataPayload?

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case data

            case slug
        }

        public init(bagId: Int, data: SmsDataPayload? = nil, slug: String) {
            self.bagId = bagId

            self.data = data

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                data = try container.decode(SmsDataPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
