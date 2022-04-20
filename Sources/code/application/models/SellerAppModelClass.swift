import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: Seller
         Used By: Catalog
     */
    class Seller: Codable {
        public var uid: Int?

        public var count: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case count

            case name
        }

        public init(count: Int? = nil, name: String? = nil, uid: Int? = nil) {
            self.uid = uid

            self.count = count

            self.name = name
        }

        public func duplicate() -> Seller {
            let dict = self.dictionary!
            let copy = Seller(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
