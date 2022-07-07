

import Foundation
public extension PlatformClient {
    /*
         Model: GatedCategoryTypes
         Used By: Catalog
     */

    class GatedCategoryTypes: Codable {
        public var food: Bool

        public enum CodingKeys: String, CodingKey {
            case food
        }

        public init(food: Bool) {
            self.food = food
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            food = try container.decode(Bool.self, forKey: .food)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(food, forKey: .food)
        }
    }
}
