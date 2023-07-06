

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var name: String

        public var priority: Int

        public var planRules: [String: Any]

        public var stage: String

        public var accountId: String

        public var dpId: String

        public var isSelfShip: Bool

        public var planId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case priority

            case planRules = "plan_rules"

            case stage

            case accountId = "account_id"

            case dpId = "dp_id"

            case isSelfShip = "is_self_ship"

            case planId = "plan_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.name = name

            self.priority = priority

            self.planRules = planRules

            self.stage = stage

            self.accountId = accountId

            self.dpId = dpId

            self.isSelfShip = isSelfShip

            self.planId = planId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            priority = try container.decode(Int.self, forKey: .priority)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            stage = try container.decode(String.self, forKey: .stage)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planId = try container.decode(String.self, forKey: .planId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planId, forKey: .planId)
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

        public var priority: Int

        public var planRules: [String: Any]

        public var stage: String

        public var accountId: String

        public var dpId: String

        public var isSelfShip: Bool

        public var planId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case priority

            case planRules = "plan_rules"

            case stage

            case accountId = "account_id"

            case dpId = "dp_id"

            case isSelfShip = "is_self_ship"

            case planId = "plan_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.name = name

            self.priority = priority

            self.planRules = planRules

            self.stage = stage

            self.accountId = accountId

            self.dpId = dpId

            self.isSelfShip = isSelfShip

            self.planId = planId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            priority = try container.decode(Int.self, forKey: .priority)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            stage = try container.decode(String.self, forKey: .stage)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planId = try container.decode(String.self, forKey: .planId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planId, forKey: .planId)
        }
    }
}
