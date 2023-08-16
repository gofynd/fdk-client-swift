

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Dp1
         Used By: Serviceability
     */

    class Dp1: Codable {
        public var isSelfShip: Bool

        public var name: String

        public var planId: String

        public var stage: String

        public var accountId: String

        public var dpId: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case name

            case planId = "plan_id"

            case stage

            case accountId = "account_id"

            case dpId = "dp_id"

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.isSelfShip = isSelfShip

            self.name = name

            self.planId = planId

            self.stage = stage

            self.accountId = accountId

            self.dpId = dpId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

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
        public var isSelfShip: Bool

        public var name: String

        public var planId: String

        public var stage: String

        public var accountId: String

        public var dpId: String

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case name

            case planId = "plan_id"

            case stage

            case accountId = "account_id"

            case dpId = "dp_id"

            case planRules = "plan_rules"
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, name: String, planId: String, planRules: [String: Any], stage: String) {
            self.isSelfShip = isSelfShip

            self.name = name

            self.planId = planId

            self.stage = stage

            self.accountId = accountId

            self.dpId = dpId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            name = try container.decode(String.self, forKey: .name)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
