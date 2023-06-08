

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DP
         Used By: Serviceability
     */

    class DP: Codable {
        public var dpId: Int

        public var stage: String

        public var isSelfShip: Bool

        public var planRules: [String: Any]

        public var accountId: Int

        public var planId: Int

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case stage

            case isSelfShip = "is_self_ship"

            case planRules = "plan_rules"

            case accountId = "account_id"

            case planId = "plan_id"
        }

        public init(accountId: Int, dpId: Int, isSelfShip: Bool, planId: Int, planRules: [String: Any], stage: String) {
            self.dpId = dpId

            self.stage = stage

            self.isSelfShip = isSelfShip

            self.planRules = planRules

            self.accountId = accountId

            self.planId = planId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            accountId = try container.decode(Int.self, forKey: .accountId)

            planId = try container.decode(Int.self, forKey: .planId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)
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

        public var stage: String

        public var isSelfShip: Bool

        public var planRules: [String: Any]

        public var accountId: Int

        public var planId: Int

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case stage

            case isSelfShip = "is_self_ship"

            case planRules = "plan_rules"

            case accountId = "account_id"

            case planId = "plan_id"
        }

        public init(accountId: Int, dpId: Int, isSelfShip: Bool, planId: Int, planRules: [String: Any], stage: String) {
            self.dpId = dpId

            self.stage = stage

            self.isSelfShip = isSelfShip

            self.planRules = planRules

            self.accountId = accountId

            self.planId = planId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            accountId = try container.decode(Int.self, forKey: .accountId)

            planId = try container.decode(Int.self, forKey: .planId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)
        }
    }
}
