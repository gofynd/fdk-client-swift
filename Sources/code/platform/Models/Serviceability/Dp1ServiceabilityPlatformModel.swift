

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var isSelfShip: Bool

        public var planId: String

        public var planRules: [String: Any]

        public var dpId: String

        public var stage: String

        public var accountId: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case planId = "plan_id"

            case planRules = "plan_rules"

            case dpId = "dp_id"

            case stage

            case accountId = "account_id"

            case name
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.isSelfShip = isSelfShip

            self.planId = planId

            self.planRules = planRules

            self.dpId = dpId

            self.stage = stage

            self.accountId = accountId

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planId = try container.decode(String.self, forKey: .planId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            accountId = try container.decode(String.self, forKey: .accountId)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var isSelfShip: Bool

        public var planId: String

        public var planRules: [String: Any]

        public var dpId: String

        public var stage: String

        public var accountId: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case planId = "plan_id"

            case planRules = "plan_rules"

            case dpId = "dp_id"

            case stage

            case accountId = "account_id"

            case name
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.isSelfShip = isSelfShip

            self.planId = planId

            self.planRules = planRules

            self.dpId = dpId

            self.stage = stage

            self.accountId = accountId

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planId = try container.decode(String.self, forKey: .planId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            accountId = try container.decode(String.self, forKey: .accountId)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
