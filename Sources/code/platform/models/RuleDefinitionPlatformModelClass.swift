import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var calculateOn: String

        public var isExact: Bool?

        public var applicableOn: String

        public var scope: [String]?

        public var autoApply: Bool?

        public var type: String

        public var valueType: String

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case calculateOn = "calculate_on"

            case isExact = "is_exact"

            case applicableOn = "applicable_on"

            case scope

            case autoApply = "auto_apply"

            case type

            case valueType = "value_type"

            case currencyCode = "currency_code"
        }

        public init(applicableOn: String, autoApply: Bool?, calculateOn: String, currencyCode: String?, isExact: Bool?, scope: [String]?, type: String, valueType: String) {
            self.calculateOn = calculateOn

            self.isExact = isExact

            self.applicableOn = applicableOn

            self.scope = scope

            self.autoApply = autoApply

            self.type = type

            self.valueType = valueType

            self.currencyCode = currencyCode
        }

        public func duplicate() -> RuleDefinition {
            let dict = self.dictionary!
            let copy = RuleDefinition(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicableOn = try container.decode(String.self, forKey: .applicableOn)

            do {
                scope = try container.decode([String].self, forKey: .scope)

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

            type = try container.decode(String.self, forKey: .type)

            valueType = try container.decode(String.self, forKey: .valueType)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
