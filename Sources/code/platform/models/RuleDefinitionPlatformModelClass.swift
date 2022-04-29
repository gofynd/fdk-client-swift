

import Foundation
public extension PlatformClient {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var isExact: Bool?

        public var calculateOn: String

        public var type: String

        public var autoApply: Bool?

        public var currencyCode: String?

        public var scope: [String]?

        public var valueType: String

        public var applicableOn: String

        public enum CodingKeys: String, CodingKey {
            case isExact = "is_exact"

            case calculateOn = "calculate_on"

            case type

            case autoApply = "auto_apply"

            case currencyCode = "currency_code"

            case scope

            case valueType = "value_type"

            case applicableOn = "applicable_on"
        }

        public init(applicableOn: String, autoApply: Bool? = nil, calculateOn: String, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String, valueType: String) {
            self.isExact = isExact

            self.calculateOn = calculateOn

            self.type = type

            self.autoApply = autoApply

            self.currencyCode = currencyCode

            self.scope = scope

            self.valueType = valueType

            self.applicableOn = applicableOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            type = try container.decode(String.self, forKey: .type)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueType = try container.decode(String.self, forKey: .valueType)

            applicableOn = try container.decode(String.self, forKey: .applicableOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
        }
    }
}
