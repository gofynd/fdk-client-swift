

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DPApplicationRuleRequest
         Used By: Serviceability
     */

    class DPApplicationRuleRequest: Codable {
        public var shippingRules: [String]

        public enum CodingKeys: String, CodingKey {
            case shippingRules = "shipping_rules"
        }

        public init(shippingRules: [String]) {
            self.shippingRules = shippingRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingRules = try container.decode([String].self, forKey: .shippingRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingRules, forKey: .shippingRules)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DPApplicationRuleRequest
         Used By: Serviceability
     */

    class DPApplicationRuleRequest: Codable {
        public var shippingRules: [String]

        public enum CodingKeys: String, CodingKey {
            case shippingRules = "shipping_rules"
        }

        public init(shippingRules: [String]) {
            self.shippingRules = shippingRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingRules = try container.decode([String].self, forKey: .shippingRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingRules, forKey: .shippingRules)
        }
    }
}
