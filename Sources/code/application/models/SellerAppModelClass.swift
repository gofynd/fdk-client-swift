

import Foundation
public extension ApplicationClient {
    /*
         Model: Seller
         Used By: Catalog
     */
    class Seller: Codable {
        public var name: String?

        public var count: Int?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case count

            case uid
        }

        public init(count: Int? = nil, name: String? = nil, uid: Int? = nil) {
            self.name = name

            self.count = count

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
