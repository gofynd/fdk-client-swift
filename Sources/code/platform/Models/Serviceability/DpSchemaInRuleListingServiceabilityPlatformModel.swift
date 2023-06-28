

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var name: String

        public var planId: String

        public var accountId: String

        public var isSelfShip: Bool

        public var stage: String

        public var priority: Int

        public var dpId: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case planId = "plan_id"

            case accountId = "account_id"

            case isSelfShip = "is_self_ship"

            case stage

            case priority

            case dpId = "dp_id"

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.name = name

            self.planId = planId

            self.accountId = accountId

            self.isSelfShip = isSelfShip

            self.stage = stage

            self.priority = priority

            self.dpId = dpId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            accountId = try container.decode(String.self, forKey: .accountId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            stage = try container.decode(String.self, forKey: .stage)

            priority = try container.decode(Int.self, forKey: .priority)

            dpId = try container.decode(String.self, forKey: .dpId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

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
        public var name: String

        public var planId: String

        public var accountId: String

        public var isSelfShip: Bool

        public var stage: String

        public var priority: Int

        public var dpId: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case planId = "plan_id"

            case accountId = "account_id"

            case isSelfShip = "is_self_ship"

            case stage

            case priority

            case dpId = "dp_id"

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.name = name

            self.planId = planId

            self.accountId = accountId

            self.isSelfShip = isSelfShip

            self.stage = stage

            self.priority = priority

            self.dpId = dpId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            accountId = try container.decode(String.self, forKey: .accountId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            stage = try container.decode(String.self, forKey: .stage)

            priority = try container.decode(Int.self, forKey: .priority)

            dpId = try container.decode(String.self, forKey: .dpId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
