

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DP
         Used By: Serviceability
     */

    class DP: Codable {
        public var isSelfShip: Bool

        public var accountId: String

        public var planId: String

        public var planRules: [String: Any]

        public var dpId: String

        public var stage: String

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case accountId = "account_id"

            case planId = "plan_id"

            case planRules = "plan_rules"

            case dpId = "dp_id"

            case stage
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, planId: String, planRules: [String: Any], stage: String) {
            self.isSelfShip = isSelfShip

            self.accountId = accountId

            self.planId = planId

            self.planRules = planRules

            self.dpId = dpId

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)

            planId = try container.decode(String.self, forKey: .planId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DP
         Used By: Serviceability
     */

    class DP: Codable {
        public var isSelfShip: Bool

        public var accountId: String

        public var planId: String

        public var planRules: [String: Any]

        public var dpId: String

        public var stage: String

        public enum CodingKeys: String, CodingKey {
            case isSelfShip = "is_self_ship"

            case accountId = "account_id"

            case planId = "plan_id"

            case planRules = "plan_rules"

            case dpId = "dp_id"

            case stage
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, planId: String, planRules: [String: Any], stage: String) {
            self.isSelfShip = isSelfShip

            self.accountId = accountId

            self.planId = planId

            self.planRules = planRules

            self.dpId = dpId

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            accountId = try container.decode(String.self, forKey: .accountId)

            planId = try container.decode(String.self, forKey: .planId)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            dpId = try container.decode(String.self, forKey: .dpId)

            stage = try container.decode(String.self, forKey: .stage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}
