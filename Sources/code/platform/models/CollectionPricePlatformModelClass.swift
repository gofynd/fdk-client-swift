

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionPrice
         Used By: Catalog
     */

    class CollectionPrice: Codable {
        public var lte: Int?

        public var gte: Int?

        public enum CodingKeys: String, CodingKey {
            case lte

            case gte
        }

        public init(gte: Int? = nil, lte: Int? = nil) {
            self.lte = lte

            self.gte = gte
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lte = try container.decode(Int.self, forKey: .lte)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gte = try container.decode(Int.self, forKey: .gte)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lte, forKey: .lte)

            try? container.encodeIfPresent(gte, forKey: .gte)
        }
    }
}
