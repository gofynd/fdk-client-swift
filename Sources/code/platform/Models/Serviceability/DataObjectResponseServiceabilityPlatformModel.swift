

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DataObjectResponse
         Used By: Serviceability
     */

    class DataObjectResponse: Codable {
        public var dpId: Int

        public var companyId: Int

        public var isSelfShip: Bool

        public var uid: String

        public var stage: String

        public var planId: Int

        public var accountId: Int

        public var planRules: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case companyId = "company_id"

            case isSelfShip = "is_self_ship"

            case uid

            case stage

            case planId = "plan_id"

            case accountId = "account_id"

            case planRules = "plan_rules"
        }

        public init(accountId: Int, companyId: Int, dpId: Int, isSelfShip: Bool, planId: Int, planRules: [String: Any]? = nil, stage: String, uid: String) {
            self.dpId = dpId

            self.companyId = companyId

            self.isSelfShip = isSelfShip

            self.uid = uid

            self.stage = stage

            self.planId = planId

            self.accountId = accountId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            uid = try container.decode(String.self, forKey: .uid)

            stage = try container.decode(String.self, forKey: .stage)

            planId = try container.decode(Int.self, forKey: .planId)

            accountId = try container.decode(Int.self, forKey: .accountId)

            do {
                planRules = try container.decode([String: Any].self, forKey: .planRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DataObjectResponse
         Used By: Serviceability
     */

    class DataObjectResponse: Codable {
        public var dpId: Int

        public var companyId: Int

        public var isSelfShip: Bool

        public var uid: String

        public var stage: String

        public var planId: Int

        public var accountId: Int

        public var planRules: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case companyId = "company_id"

            case isSelfShip = "is_self_ship"

            case uid

            case stage

            case planId = "plan_id"

            case accountId = "account_id"

            case planRules = "plan_rules"
        }

        public init(accountId: Int, companyId: Int, dpId: Int, isSelfShip: Bool, planId: Int, planRules: [String: Any]? = nil, stage: String, uid: String) {
            self.dpId = dpId

            self.companyId = companyId

            self.isSelfShip = isSelfShip

            self.uid = uid

            self.stage = stage

            self.planId = planId

            self.accountId = accountId

            self.planRules = planRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)

            uid = try container.decode(String.self, forKey: .uid)

            stage = try container.decode(String.self, forKey: .stage)

            planId = try container.decode(Int.self, forKey: .planId)

            accountId = try container.decode(Int.self, forKey: .accountId)

            do {
                planRules = try container.decode([String: Any].self, forKey: .planRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(accountId, forKey: .accountId)

            try? container.encodeIfPresent(planRules, forKey: .planRules)
        }
    }
}
