

import Foundation
public extension ApplicationClient {
    /*
         Model: InventoryBrandRule
         Used By: Configuration
     */
    class InventoryBrandRule: Codable {
        public var criteria: String?

        public var brands: [Int]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case brands
        }

        public init(brands: [Int]? = nil, criteria: String? = nil) {
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
                brands = try container.decode([Int].self, forKey: .brands)

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
