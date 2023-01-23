

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsStatusTrail
         Used By: Billing
     */

    class InvoiceDetailsStatusTrail: Codable {
        public var id: String?

        public var value: String?

        public var timestamp: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case value

            case timestamp
        }

        public init(timestamp: String? = nil, value: String? = nil, id: String? = nil) {
            self.id = id

            self.value = value

            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(String.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}
