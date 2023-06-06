

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DP
         Used By: Serviceability
     */

    class DP: Codable {
        public var dpId: Int

        public var isSelfShip: Bool

        public var stage: String

        public var planId: Int

        public var accountId: Int

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case isSelfShip = "is_self_ship"

            case stage

            case planId = "plan_id"

            case accountId = "account_id"

            case planRules = "plan_rules"
        }

        public init(accountId: Int, dpId: Int, isSelfShip: Bool, planId: Int, planRules: [String: Any], stage: String) {
            self.dpId = dpId

            self.isSelfShip = isSelfShip

            self.stage = stage

            self.planId = planId

            self.accountId = accountId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            stage = try container.decode(String.self, forKey: .stage)

            planId = try container.decode(Int.self, forKey: .planId)

            accountId = try container.decode(Int.self, forKey: .accountId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DP
         Used By: Serviceability
     */

    class DP: Codable {
        public var dpId: Int

        public var isSelfShip: Bool

        public var stage: String

        public var planId: Int

        public var accountId: Int

        public var planRules: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case isSelfShip = "is_self_ship"

            case stage

            case planId = "plan_id"

            case accountId = "account_id"

            case planRules = "plan_rules"
        }

        public init(accountId: Int, dpId: Int, isSelfShip: Bool, planId: Int, planRules: [String: Any], stage: String) {
            self.dpId = dpId

            self.isSelfShip = isSelfShip

            self.stage = stage

            self.planId = planId

            self.accountId = accountId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            stage = try container.decode(String.self, forKey: .stage)

            planId = try container.decode(Int.self, forKey: .planId)

            accountId = try container.decode(Int.self, forKey: .accountId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
