import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CurrenciesResponse
         Used By: Configuration
     */
    class CurrenciesResponse: Codable {
        public var items: [Currency]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [Currency]?) {
            self.items = items
        }

        public func duplicate() -> CurrenciesResponse {
            let dict = self.dictionary!
            let copy = CurrenciesResponse(dictionary: dict)!
            return copy
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
