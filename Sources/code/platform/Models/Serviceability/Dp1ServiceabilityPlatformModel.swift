

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var planId: String

        public var isSelfShip: Bool

        public var name: String

        public var dpId: String

        public var accountId: String

        public var planRules: [String: Any]

        public var stage: String

        public enum CodingKeys: String, CodingKey {
            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case name

            case dpId = "dp_id"

            case accountId = "account_id"

            case planRules = "plan_rules"

            case stage
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.planId = planId

            self.isSelfShip = isSelfShip

            self.name = name

            self.dpId = dpId

            self.accountId = accountId

            self.planRules = planRules

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            name = try container.decode(String.self, forKey: .name)

            dpId = try container.decode(String.self, forKey: .dpId)

            accountId = try container.decode(String.self, forKey: .accountId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            stage = try container.decode(String.self, forKey: .stage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var planId: String

        public var isSelfShip: Bool

        public var name: String

        public var dpId: String

        public var accountId: String

        public var planRules: [String: Any]

        public var stage: String

        public enum CodingKeys: String, CodingKey {
            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case name

            case dpId = "dp_id"

            case accountId = "account_id"

            case planRules = "plan_rules"

            case stage
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.planId = planId

            self.isSelfShip = isSelfShip

            self.name = name

            self.dpId = dpId

            self.accountId = accountId

            self.planRules = planRules

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            name = try container.decode(String.self, forKey: .name)

            dpId = try container.decode(String.self, forKey: .dpId)

            accountId = try container.decode(String.self, forKey: .accountId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            stage = try container.decode(String.self, forKey: .stage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}
