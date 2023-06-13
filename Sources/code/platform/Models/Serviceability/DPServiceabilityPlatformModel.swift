

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DP
         Used By: Serviceability
     */

    class DP: Codable {
        public var planRules: [String: Any]

        public var accountId: String

        public var dpId: String

        public var isSelfShip: Bool

        public var planId: String

        public var stage: String

        public enum CodingKeys: String, CodingKey {
            case planRules = "plan_rules"

            case accountId = "account_id"

            case dpId = "dp_id"

            case isSelfShip = "is_self_ship"

            case planId = "plan_id"

            case stage
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, planId: String, planRules: [String: Any], stage: String) {
            self.planRules = planRules

            self.accountId = accountId

            self.dpId = dpId

            self.isSelfShip = isSelfShip

            self.planId = planId

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planId, forKey: .planId)

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
        public var planRules: [String: Any]

        public var accountId: String

        public var dpId: String

        public var isSelfShip: Bool

        public var planId: String

        public var stage: String

        public enum CodingKeys: String, CodingKey {
            case planRules = "plan_rules"

            case accountId = "account_id"

            case dpId = "dp_id"

            case isSelfShip = "is_self_ship"

            case planId = "plan_id"

            case stage
        }

        public init(accountId: String, dpId: String, isSelfShip: Bool, planId: String, planRules: [String: Any], stage: String) {
            self.planRules = planRules

            self.accountId = accountId

            self.dpId = dpId

            self.isSelfShip = isSelfShip

            self.planId = planId

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            planRules = try container.decode([String: Any].self, forKey: .planRules)

            accountId = try container.decode(String.self, forKey: .accountId)

            dpId = try container.decode(String.self, forKey: .dpId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            planId = try container.decode(String.self, forKey: .planId)

            stage = try container.decode(String.self, forKey: .stage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(planRules, forKey: .planRules)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}
