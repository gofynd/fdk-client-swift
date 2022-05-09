

import Foundation
public extension PlatformClient {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var currencyCode: String?

        public var scope: [String]?

        public var type: String

        public var calculateOn: String

        public var valueType: String

        public var autoApply: Bool?

        public var isExact: Bool?

        public var applicableOn: String

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case scope

            case type

            case calculateOn = "calculate_on"

            case valueType = "value_type"

            case autoApply = "auto_apply"

            case isExact = "is_exact"

            case applicableOn = "applicable_on"
        }

        public init(applicableOn: String, autoApply: Bool? = nil, calculateOn: String, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String, valueType: String) {
            self.currencyCode = currencyCode

            self.scope = scope

            self.type = type

            self.calculateOn = calculateOn

            self.valueType = valueType

            self.autoApply = autoApply

            self.isExact = isExact

            self.applicableOn = applicableOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            type = try container.decode(String.self, forKey: .type)

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            valueType = try container.decode(String.self, forKey: .valueType)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicableOn = try container.decode(String.self, forKey: .applicableOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
        }
    }
}
