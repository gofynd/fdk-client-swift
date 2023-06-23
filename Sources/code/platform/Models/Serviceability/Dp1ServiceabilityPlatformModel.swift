

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var name: String

        public var stage: String

        public var dpId: String

        public var accountId: String

        public var planId: String

        public var isSelfShip: Bool

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case stage

            case dpId = "dp_id"

            case accountId = "account_id"

            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.name = name

            self.stage = stage

            self.dpId = dpId

            self.accountId = accountId

            self.planId = planId

            self.isSelfShip = isSelfShip

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            stage = try container.decode(String.self, forKey: .stage)

            dpId = try container.decode(String.self, forKey: .dpId)

            accountId = try container.decode(String.self, forKey: .accountId)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
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

        public var stage: String

        public var dpId: String

        public var accountId: String

        public var planId: String

        public var isSelfShip: Bool

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case stage

            case dpId = "dp_id"

            case accountId = "account_id"

            case planId = "plan_id"

            case isSelfShip = "is_self_ship"

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.name = name

            self.stage = stage

            self.dpId = dpId

            self.accountId = accountId

            self.planId = planId

            self.isSelfShip = isSelfShip

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            stage = try container.decode(String.self, forKey: .stage)

            dpId = try container.decode(String.self, forKey: .dpId)

            accountId = try container.decode(String.self, forKey: .accountId)

            planId = try container.decode(String.self, forKey: .planId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
