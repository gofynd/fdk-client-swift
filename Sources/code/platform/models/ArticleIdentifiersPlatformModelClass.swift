

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleIdentifiers
         Used By: Order
     */

    class ArticleIdentifiers: Codable {
        public var ean: String?

        public enum CodingKeys: String, CodingKey {
            case ean
        }

        public init(ean: String? = nil) {
            self.ean = ean
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ean = try container.decode(String.self, forKey: .ean)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ean, forKey: .ean)
        }
    }
}
