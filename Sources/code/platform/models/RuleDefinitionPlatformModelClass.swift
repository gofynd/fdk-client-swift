

import Foundation
public extension PlatformClient {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var applicableOn: String

        public var autoApply: Bool?

        public var calculateOn: String

        public var valueType: String

        public var scope: [String]?

        public var type: String

        public var currencyCode: String?

        public var isExact: Bool?

        public enum CodingKeys: String, CodingKey {
            case applicableOn = "applicable_on"

            case autoApply = "auto_apply"

            case calculateOn = "calculate_on"

            case valueType = "value_type"

            case scope

            case type

            case currencyCode = "currency_code"

            case isExact = "is_exact"
        }

        public init(applicableOn: String, autoApply: Bool? = nil, calculateOn: String, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String, valueType: String) {
            self.applicableOn = applicableOn

            self.autoApply = autoApply

            self.calculateOn = calculateOn

            self.valueType = valueType

            self.scope = scope

            self.type = type

            self.currencyCode = currencyCode

            self.isExact = isExact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicableOn = try container.decode(String.self, forKey: .applicableOn)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            valueType = try container.decode(String.self, forKey: .valueType)

            do {
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(isExact, forKey: .isExact)
        }
    }
}
