

import Foundation
public extension PlatformClient {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var scope: [String]?

        public var applicableOn: String

        public var calculateOn: String

        public var isExact: Bool?

        public var autoApply: Bool?

        public var currencyCode: String?

        public var type: String

        public var valueType: String

        public enum CodingKeys: String, CodingKey {
            case scope

            case applicableOn = "applicable_on"

            case calculateOn = "calculate_on"

            case isExact = "is_exact"

            case autoApply = "auto_apply"

            case currencyCode = "currency_code"

            case type

            case valueType = "value_type"
        }

        public init(applicableOn: String, autoApply: Bool? = nil, calculateOn: String, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String, valueType: String) {
            self.scope = scope

            self.applicableOn = applicableOn

            self.calculateOn = calculateOn

            self.isExact = isExact

            self.autoApply = autoApply

            self.currencyCode = currencyCode

            self.type = type

            self.valueType = valueType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicableOn = try container.decode(String.self, forKey: .applicableOn)

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            type = try container.decode(String.self, forKey: .type)

            valueType = try container.decode(String.self, forKey: .valueType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(valueType, forKey: .valueType)
        }
    }
}