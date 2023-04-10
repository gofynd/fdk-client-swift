

import Foundation
public extension ApplicationClient {
    /*
         Model: TATArticlesRequest
         Used By: Logistic
     */
    class TATArticlesRequest: Codable {
        public var availableQuantity: Int?

        public var manufacturingTimeUnit: String?

        public var manufacturingTime: Int?

        public var category: TATCategoryRequest?

        public enum CodingKeys: String, CodingKey {
            case availableQuantity = "available_quantity"

            case manufacturingTimeUnit = "manufacturing_time_unit"

            case manufacturingTime = "manufacturing_time"

            case category
        }

        public init(availableQuantity: Int? = nil, category: TATCategoryRequest? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil) {
            self.availableQuantity = availableQuantity

            self.manufacturingTimeUnit = manufacturingTimeUnit

            self.manufacturingTime = manufacturingTime

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availableQuantity = try container.decode(Int.self, forKey: .availableQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(TATCategoryRequest.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableQuantity, forKey: .availableQuantity)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
