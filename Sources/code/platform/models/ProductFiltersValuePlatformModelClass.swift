

import Foundation
public extension PlatformClient {
    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */

    class ProductFiltersValue: Codable {
        public var currencySymbol: String?

        public var selectedMin: Int?

        public var max: Int?

        public var selectedMax: Int?

        public var count: Int?

        public var isSelected: Bool

        public var queryFormat: String?

        public var displayFormat: String?

        public var value: [String: Any]

        public var currencyCode: String?

        public var display: String

        public var min: Int?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case selectedMin = "selected_min"

            case max

            case selectedMax = "selected_max"

            case count

            case isSelected = "is_selected"

            case queryFormat = "query_format"

            case displayFormat = "display_format"

            case value

            case currencyCode = "currency_code"

            case display

            case min
        }

        public init(count: Int? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String, displayFormat: String? = nil, isSelected: Bool, max: Int? = nil, min: Int? = nil, queryFormat: String? = nil, selectedMax: Int? = nil, selectedMin: Int? = nil, value: [String: Any]) {
            self.currencySymbol = currencySymbol

            self.selectedMin = selectedMin

            self.max = max

            self.selectedMax = selectedMax

            self.count = count

            self.isSelected = isSelected

            self.queryFormat = queryFormat

            self.displayFormat = displayFormat

            self.value = value

            self.currencyCode = currencyCode

            self.display = display

            self.min = min
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode([String: Any].self, forKey: .value)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }
}
