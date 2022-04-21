

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryBrand
         Used By: Configuration
     */

    class InventoryBrand: Codable {
        public var criteria: String?

        public var brands: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case brands
        }

        public init(brands: [[String: Any]]? = nil, criteria: String? = nil) {
            self.criteria = criteria

            self.brands = brands
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([[String: Any]].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }
}
