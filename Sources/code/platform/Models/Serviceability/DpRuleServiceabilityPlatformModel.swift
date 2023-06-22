

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRule
         Used By: Serviceability
     */

    class DpRule: Codable {
        public var name: String

        public var dpIds: [String: DpSchemaInRuleListing]

        public var conditions: [[String: Any]]

        public var isActive: Bool?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case dpIds = "dp_ids"

            case conditions

            case isActive = "is_active"

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: DpSchemaInRuleListing], isActive: Bool? = nil, name: String) {
            self.name = name

            self.dpIds = dpIds

            self.conditions = conditions

            self.isActive = isActive

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            dpIds = try container.decode([String: DpSchemaInRuleListing].self, forKey: .dpIds)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRule
         Used By: Serviceability
     */

    class DpRule: Codable {
        public var name: String

        public var dpIds: [String: DpSchemaInRuleListing]

        public var conditions: [[String: Any]]

        public var isActive: Bool?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case dpIds = "dp_ids"

            case conditions

            case isActive = "is_active"

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: DpSchemaInRuleListing], isActive: Bool? = nil, name: String) {
            self.name = name

            self.dpIds = dpIds

            self.conditions = conditions

            self.isActive = isActive

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            dpIds = try container.decode([String: DpSchemaInRuleListing].self, forKey: .dpIds)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
