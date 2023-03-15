

import Foundation
public extension ApplicationClient {
    /*
         Model: ListingPriceFeature
         Used By: Configuration
     */
    class ListingPriceFeature: Codable {
        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case value
        }

        public init(value: String? = nil) {
            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
