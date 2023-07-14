

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var planRules: [String: Any]

        public var isSelfShip: Bool

        public var stage: String

        public var dpId: String

        public var name: String

        public var planId: String

        public var accountId: String

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case planRules = "plan_rules"

            case isSelfShip = "is_self_ship"

            case stage

            case dpId = "dp_id"

            case name

            case planId = "plan_id"

            case accountId = "account_id"

            case priority
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.planRules = planRules

            self.isSelfShip = isSelfShip

            self.stage = stage

            self.dpId = dpId

            self.name = name

            self.planId = planId

            self.accountId = accountId

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            stage = try container.decode(String.self, forKey: .stage)

            dpId = try container.decode(String.self, forKey: .dpId)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            accountId = try container.decode(String.self, forKey: .accountId)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var planRules: [String: Any]

        public var isSelfShip: Bool

        public var stage: String

        public var dpId: String

        public var name: String

        public var planId: String

        public var accountId: String

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case planRules = "plan_rules"

            case isSelfShip = "is_self_ship"

            case stage

            case dpId = "dp_id"

            case name

            case planId = "plan_id"

            case accountId = "account_id"

            case priority
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.planRules = planRules

            self.isSelfShip = isSelfShip

            self.stage = stage

            self.dpId = dpId

            self.name = name

            self.planId = planId

            self.accountId = accountId

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            stage = try container.decode(String.self, forKey: .stage)

            dpId = try container.decode(String.self, forKey: .dpId)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            accountId = try container.decode(String.self, forKey: .accountId)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
