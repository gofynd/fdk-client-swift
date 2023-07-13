

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var dpId: String

        public var planId: String

        public var stage: String

        public var planRules: [String: Any]

        public var accountId: String

        public var priority: Int

        public var name: String

        public var isSelfShip: Bool

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case planId = "plan_id"

            case stage

            case planRules = "plan_rules"

            case accountId = "account_id"

            case priority

            case name

            case isSelfShip = "is_self_ship"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.dpId = dpId

            self.planId = planId

            self.stage = stage

            self.planRules = planRules

            self.accountId = accountId

            self.priority = priority

            self.name = name

            self.isSelfShip = isSelfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(String.self, forKey: .dpId)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            accountId = try container.decode(String.self, forKey: .accountId)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var dpId: String

        public var planId: String

        public var stage: String

        public var planRules: [String: Any]

        public var accountId: String

        public var priority: Int

        public var name: String

        public var isSelfShip: Bool

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case planId = "plan_id"

            case stage

            case planRules = "plan_rules"

            case accountId = "account_id"

            case priority

            case name

            case isSelfShip = "is_self_ship"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.dpId = dpId

            self.planId = planId

            self.stage = stage

            self.planRules = planRules

            self.accountId = accountId

            self.priority = priority

            self.name = name

            self.isSelfShip = isSelfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(String.self, forKey: .dpId)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            accountId = try container.decode(String.self, forKey: .accountId)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
        }
    }
}
