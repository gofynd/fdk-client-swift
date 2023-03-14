

import Foundation

public extension PlatformClient.Inventory {
    /*
         Model: SuppressStorePayload
         Used By: Inventory
     */

    class SuppressStorePayload: Codable {
        public var payload: [SuppressStoreModel]?

        public var meta: KafkaMetaModel?

        public enum CodingKeys: String, CodingKey {
            case payload

            case meta
        }

        public init(meta: KafkaMetaModel? = nil, payload: [SuppressStoreModel]? = nil) {
            self.payload = payload

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payload = try container.decode([SuppressStoreModel].self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(KafkaMetaModel.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payload, forKey: .payload)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
