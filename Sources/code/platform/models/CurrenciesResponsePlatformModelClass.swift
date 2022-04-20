

import Foundation
public extension PlatformClient {
    /*
         Model: CurrenciesResponse
         Used By: Configuration
     */

    class CurrenciesResponse: Codable {
        public var items: [Currency]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [Currency]? = nil) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Currency].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
