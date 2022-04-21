

import Foundation
public extension PlatformClient {
    /*
         Model: Damaged
         Used By: Order
     */

    class Damaged: Codable {
        public var updatedAt: String?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case count
        }

        public init(count: Int? = nil, updatedAt: String? = nil) {
            self.updatedAt = updatedAt

            self.count = count
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
