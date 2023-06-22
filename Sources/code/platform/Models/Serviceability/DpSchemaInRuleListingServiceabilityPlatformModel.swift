

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var isSelfShip: Bool

        public var accountId: String

        public var name: String

        public var priority: Int

        public var dpId: String

        public var stage: String

        public var planRules: [String: Any]

        public var planId: String

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case accountId = "account_id"

            case name

            case priority

            case dpId = "dp_id"

            case stage

            case planRules = "plan_rules"

            case planId = "plan_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.isSelfShip = isSelfShip

            self.accountId = accountId

            self.name = name

            self.priority = priority

            self.dpId = dpId

            self.stage = stage

            self.planRules = planRules

            self.planId = planId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)

            name = try container.decode(String.self, forKey: .name)

            priority = try container.decode(Int.self, forKey: .priority)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            planId = try container.decode(String.self, forKey: .planId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

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
        public var isSelfShip: Bool

        public var accountId: String

        public var name: String

        public var priority: Int

        public var dpId: String

        public var stage: String

        public var planRules: [String: Any]

        public var planId: String

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case accountId = "account_id"

            case name

            case priority

            case dpId = "dp_id"

            case stage

            case planRules = "plan_rules"

            case planId = "plan_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.isSelfShip = isSelfShip

            self.accountId = accountId

            self.name = name

            self.priority = priority

            self.dpId = dpId

            self.stage = stage

            self.planRules = planRules

            self.planId = planId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)

            name = try container.decode(String.self, forKey: .name)

            priority = try container.decode(Int.self, forKey: .priority)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            planId = try container.decode(String.self, forKey: .planId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(planId, forKey: .planId)
        }
    }
}
