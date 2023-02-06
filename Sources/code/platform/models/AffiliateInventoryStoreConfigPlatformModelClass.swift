

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateInventoryStoreConfig
         Used By: Order
     */

    class AffiliateInventoryStoreConfig: Codable {
        public var store: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case store
        }

        public init(store: [String: Any]? = nil) {
            self.store = store
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                store = try container.decode([String: Any].self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)
        }
    }
}
