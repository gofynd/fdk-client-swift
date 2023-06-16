

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var name: String

        public var dpId: String

        public var planId: String

        public var stage: String

        public var planRules: [String: Any]

        public var isSelfShip: Bool

        public var accountId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case dpId = "dp_id"

            case planId = "plan_id"

            case stage

            case planRules = "plan_rules"

            case isSelfShip = "is_self_ship"

            case accountId = "account_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.name = name

            self.dpId = dpId

            self.planId = planId

            self.stage = stage

            self.planRules = planRules

            self.isSelfShip = isSelfShip

            self.accountId = accountId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            dpId = try container.decode(String.self, forKey: .dpId)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var name: String

        public var dpId: String

        public var planId: String

        public var stage: String

        public var planRules: [String: Any]

        public var isSelfShip: Bool

        public var accountId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case dpId = "dp_id"

            case planId = "plan_id"

            case stage

            case planRules = "plan_rules"

            case isSelfShip = "is_self_ship"

            case accountId = "account_id"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.name = name

            self.dpId = dpId

            self.planId = planId

            self.stage = stage

            self.planRules = planRules

            self.isSelfShip = isSelfShip

            self.accountId = accountId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            dpId = try container.decode(String.self, forKey: .dpId)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)
        }
    }
}
