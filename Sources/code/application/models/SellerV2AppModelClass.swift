import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: SellerV2
         Used By: Catalog
     */
    class SellerV2: Codable {
        public var uid: Int?

        public var name: String?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name

            case count
        }

        public init(count: Int? = nil, name: String? = nil, uid: Int? = nil) {
            self.uid = uid

            self.name = name

            self.count = count
        }

        public func duplicate() -> SellerV2 {
            let dict = self.dictionary!
            let copy = SellerV2(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
