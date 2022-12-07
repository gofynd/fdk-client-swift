

import Foundation
public extension PlatformClient {
    /*
         Model: CustomOrder
         Used By: Catalog
     */

    class CustomOrder: Codable {
        public var isCustomOrder: Bool?

        public var manufacturingTimeUnit: String?

        public var manufacturingTime: Int?

        public enum CodingKeys: String, CodingKey {
            case isCustomOrder = "is_custom_order"

            case manufacturingTimeUnit = "manufacturing_time_unit"

            case manufacturingTime = "manufacturing_time"
        }

        public init(isCustomOrder: Bool? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil) {
            self.isCustomOrder = isCustomOrder

            self.manufacturingTimeUnit = manufacturingTimeUnit

            self.manufacturingTime = manufacturingTime
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isCustomOrder = try container.decode(Bool.self, forKey: .isCustomOrder)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
        }
    }
}
