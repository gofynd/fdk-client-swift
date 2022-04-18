import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductReturnConfig
         Used By: Order
     */

    class ProductReturnConfig: Codable {
        public var onSameStore: Bool?

        public enum CodingKeys: String, CodingKey {
            case onSameStore = "on_same_store"
        }

        public init(onSameStore: Bool?) {
            self.onSameStore = onSameStore
        }

        public func duplicate() -> ProductReturnConfig {
            let dict = self.dictionary!
            let copy = ProductReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                onSameStore = try container.decode(Bool.self, forKey: .onSameStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
        }
    }
}
