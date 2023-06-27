

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var stage: String

        public var isSelfShip: Bool

        public var dpId: String

        public var priority: Int

        public var accountId: String

        public var planId: String

        public var name: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case stage

            case isSelfShip = "is_self_ship"

            case dpId = "dp_id"

            case priority

            case accountId = "account_id"

            case planId = "plan_id"

            case name

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.stage = stage

            self.isSelfShip = isSelfShip

            self.dpId = dpId

            self.priority = priority

            self.accountId = accountId

            self.planId = planId

            self.name = name

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stage = try container.decode(String.self, forKey: .stage)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            dpId = try container.decode(String.self, forKey: .dpId)

            priority = try container.decode(Int.self, forKey: .priority)

            accountId = try container.decode(String.self, forKey: .accountId)

            planId = try container.decode(String.self, forKey: .planId)

            name = try container.decode(String.self, forKey: .name)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var stage: String

        public var isSelfShip: Bool

        public var dpId: String

        public var priority: Int

        public var accountId: String

        public var planId: String

        public var name: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case stage

            case isSelfShip = "is_self_ship"

            case dpId = "dp_id"

            case priority

            case accountId = "account_id"

            case planId = "plan_id"

            case name

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.stage = stage

            self.isSelfShip = isSelfShip

            self.dpId = dpId

            self.priority = priority

            self.accountId = accountId

            self.planId = planId

            self.name = name

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stage = try container.decode(String.self, forKey: .stage)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            dpId = try container.decode(String.self, forKey: .dpId)

            priority = try container.decode(Int.self, forKey: .priority)

            accountId = try container.decode(String.self, forKey: .accountId)

            planId = try container.decode(String.self, forKey: .planId)

            name = try container.decode(String.self, forKey: .name)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
