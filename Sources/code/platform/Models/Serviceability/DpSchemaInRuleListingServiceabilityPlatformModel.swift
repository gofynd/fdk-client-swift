

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpSchemaInRuleListing
         Used By: Serviceability
     */

    class DpSchemaInRuleListing: Codable {
        public var accountId: String

        public var dpId: String

        public var stage: String

        public var planId: String

        public var isSelfShip: Bool

        public var priority: Int

        public var name: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case accountId = "account_id"

            case dpId = "dp_id"

            case stage

            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case priority

            case name

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.accountId = accountId

            self.dpId = dpId

            self.stage = stage

            self.planId = planId

            self.isSelfShip = isSelfShip

            self.priority = priority

            self.name = name

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(priority, forKey: .priority)

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
        public var accountId: String

        public var dpId: String

        public var stage: String

        public var planId: String

        public var isSelfShip: Bool

        public var priority: Int

        public var name: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case accountId = "account_id"

            case dpId = "dp_id"

            case stage

            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case priority

            case name

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], priority: Int, stage: String) {
            self.accountId = accountId

            self.dpId = dpId

            self.stage = stage

            self.planId = planId

            self.isSelfShip = isSelfShip

            self.priority = priority

            self.name = name

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
