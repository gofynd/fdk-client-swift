

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var planId: String

        public var isSelfShip: Bool

        public var accountId: String

        public var name: String

        public var stage: String

        public var planRules: [String: Any]

        public var dpId: String

        public enum CodingKeys: String, CodingKey {
            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case accountId = "account_id"

            case name

            case stage

            case planRules = "plan_rules"

            case dpId = "dp_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.planId = planId

            self.isSelfShip = isSelfShip

            self.accountId = accountId

            self.name = name

            self.stage = stage

            self.planRules = planRules

            self.dpId = dpId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)

            name = try container.decode(String.self, forKey: .name)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)
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

        public var accountId: String

        public var name: String

        public var stage: String

        public var planRules: [String: Any]

        public var dpId: String

        public enum CodingKeys: String, CodingKey {
            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case accountId = "account_id"

            case name

            case stage

            case planRules = "plan_rules"

            case dpId = "dp_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.planId = planId

            self.isSelfShip = isSelfShip

            self.accountId = accountId

            self.name = name

            self.stage = stage

            self.planRules = planRules

            self.dpId = dpId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)

            name = try container.decode(String.self, forKey: .name)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)
        }
    }
}
