

import Foundation
public extension PublicClient {
    /*
         Model: DataTresholdDTO
         Used By: Inventory
     */

    class DataTresholdDTO: Codable {
        public var minPrice: Double?

        public var safeStock: Int?

        public var periodThreshold: Int?

        public var periodThresholdType: String?

        public var periodTypeList: [GenericDTO]?

        public enum CodingKeys: String, CodingKey {
            case minPrice = "min_price"

            case safeStock = "safe_stock"

            case periodThreshold = "period_threshold"

            case periodThresholdType = "period_threshold_type"

            case periodTypeList = "period_type_list"
        }

        public init(minPrice: Double? = nil, periodThreshold: Int? = nil, periodThresholdType: String? = nil, periodTypeList: [GenericDTO]? = nil, safeStock: Int? = nil) {
            self.minPrice = minPrice

            self.safeStock = safeStock

            self.periodThreshold = periodThreshold

            self.periodThresholdType = periodThresholdType

            self.periodTypeList = periodTypeList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minPrice = try container.decode(Double.self, forKey: .minPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                safeStock = try container.decode(Int.self, forKey: .safeStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                periodThreshold = try container.decode(Int.self, forKey: .periodThreshold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                periodThresholdType = try container.decode(String.self, forKey: .periodThresholdType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                periodTypeList = try container.decode([GenericDTO].self, forKey: .periodTypeList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minPrice, forKey: .minPrice)

            try? container.encodeIfPresent(safeStock, forKey: .safeStock)

            try? container.encodeIfPresent(periodThreshold, forKey: .periodThreshold)

            try? container.encodeIfPresent(periodThresholdType, forKey: .periodThresholdType)

            try? container.encodeIfPresent(periodTypeList, forKey: .periodTypeList)
        }
    }
}
