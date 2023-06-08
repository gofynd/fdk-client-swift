

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleRequest
         Used By: Serviceability
     */

    class DpRuleRequest: Codable {
        public var identifier: String

        public var companyId: Int?

        public var dpIds: [String: Any]

        public var name: String

        public var isActive: Bool?

        public var conditions: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case companyId = "company_id"

            case dpIds = "dp_ids"

            case name

            case isActive = "is_active"

            case conditions
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: Any], identifier: String, isActive: Bool? = nil, name: String) {
            self.identifier = identifier

            self.companyId = companyId

            self.dpIds = dpIds

            self.name = name

            self.isActive = isActive

            self.conditions = conditions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleRequest
         Used By: Serviceability
     */

    class DpRuleRequest: Codable {
        public var identifier: String

        public var companyId: Int?

        public var dpIds: [String: Any]

        public var name: String

        public var isActive: Bool?

        public var conditions: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case companyId = "company_id"

            case dpIds = "dp_ids"

            case name

            case isActive = "is_active"

            case conditions
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: Any], identifier: String, isActive: Bool? = nil, name: String) {
            self.identifier = identifier

            self.companyId = companyId

            self.dpIds = dpIds

            self.name = name

            self.isActive = isActive

            self.conditions = conditions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)
        }
    }
}
