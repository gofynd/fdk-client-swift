

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var currencyCode: String?

        public var applicableOn: String

        public var autoApply: Bool?

        public var valueType: String

        public var isExact: Bool?

        public var type: String

        public var scope: [String]?

        public var calculateOn: String

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case applicableOn = "applicable_on"

            case autoApply = "auto_apply"

            case valueType = "value_type"

            case isExact = "is_exact"

            case type

            case scope

            case calculateOn = "calculate_on"
        }

        public init(applicableOn: String, autoApply: Bool? = nil, calculateOn: String, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String, valueType: String) {
            self.currencyCode = currencyCode

            self.applicableOn = applicableOn

            self.autoApply = autoApply

            self.valueType = valueType

            self.isExact = isExact

            self.type = type

            self.scope = scope

            self.calculateOn = calculateOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicableOn = try container.decode(String.self, forKey: .applicableOn)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueType = try container.decode(String.self, forKey: .valueType)

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            calculateOn = try container.decode(String.self, forKey: .calculateOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
        }
    }
}
