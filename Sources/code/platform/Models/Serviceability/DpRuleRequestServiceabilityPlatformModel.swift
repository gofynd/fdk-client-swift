

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleRequest
         Used By: Serviceability
     */

    class DpRuleRequest: Codable {
        public var companyId: Int?

        public var isActive: Bool?

        public var dpIds: [String: DpIds]

        public var conditions: [[String: Any]]

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case isActive = "is_active"

            case dpIds = "dp_ids"

            case conditions

            case name
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: DpIds], isActive: Bool? = nil, name: String) {
            self.companyId = companyId

            self.isActive = isActive

            self.dpIds = dpIds

            self.conditions = conditions

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: DpIds].self, forKey: .dpIds)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleRequest
         Used By: Serviceability
     */

    class DpRuleRequest: Codable {
        public var companyId: Int?

        public var isActive: Bool?

        public var dpIds: [String: DpIds]

        public var conditions: [[String: Any]]

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case isActive = "is_active"

            case dpIds = "dp_ids"

            case conditions

            case name
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: DpIds], isActive: Bool? = nil, name: String) {
            self.companyId = companyId

            self.isActive = isActive

            self.dpIds = dpIds

            self.conditions = conditions

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: DpIds].self, forKey: .dpIds)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}