

import Foundation
public extension ApplicationClient {
    /*
         Model: Articles
         Used By: Logistic
     */
    class Articles: Codable {
        public var manufacturingTime: Int?

        public var category: Category?

        public var manufacturingTimeUnit: String?

        public enum CodingKeys: String, CodingKey {
            case manufacturingTime = "manufacturing_time"

            case category

            case manufacturingTimeUnit = "manufacturing_time_unit"
        }

        public init(category: Category? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil) {
            self.manufacturingTime = manufacturingTime

            self.category = category

            self.manufacturingTimeUnit = manufacturingTimeUnit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(Category.self, forKey: .category)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
        }
    }
}
