

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var accountId: String

        public var planRules: [String: Any]

        public var dpId: String

        public var name: String

        public var planId: String

        public var stage: String

        public var isSelfShip: Bool

        public enum CodingKeys: String, CodingKey {
            case accountId = "account_id"

            case planRules = "plan_rules"

            case dpId = "dp_id"

            case name

            case planId = "plan_id"

            case stage

            case isSelfShip = "is_self_ship"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.accountId = accountId

            self.planRules = planRules

            self.dpId = dpId

            self.name = name

            self.planId = planId

            self.stage = stage

            self.isSelfShip = isSelfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountId = try container.decode(String.self, forKey: .accountId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var accountId: String

        public var planRules: [String: Any]

        public var dpId: String

        public var name: String

        public var planId: String

        public var stage: String

        public var isSelfShip: Bool

        public enum CodingKeys: String, CodingKey {
            case accountId = "account_id"

            case planRules = "plan_rules"

            case dpId = "dp_id"

            case name

            case planId = "plan_id"

            case stage

            case isSelfShip = "is_self_ship"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.accountId = accountId

            self.planRules = planRules

            self.dpId = dpId

            self.name = name

            self.planId = planId

            self.stage = stage

            self.isSelfShip = isSelfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountId = try container.decode(String.self, forKey: .accountId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
        }
    }
}
