

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var name: String

        public var uid: String

        public var conditions: [String]

        public var isActive: Bool?

        public var companyId: Int

        public var dpIds: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case name

            case uid

            case conditions

            case isActive = "is_active"

            case companyId = "company_id"

            case dpIds = "dp_ids"
        }

        public init(companyId: Int, conditions: [String], createdBy: [String: Any]? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.name = name

            self.uid = uid

            self.conditions = conditions

            self.isActive = isActive

            self.companyId = companyId

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)

            conditions = try container.decode([String].self, forKey: .conditions)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var name: String

        public var uid: String

        public var conditions: [String]

        public var isActive: Bool?

        public var companyId: Int

        public var dpIds: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case name

            case uid

            case conditions

            case isActive = "is_active"

            case companyId = "company_id"

            case dpIds = "dp_ids"
        }

        public init(companyId: Int, conditions: [String], createdBy: [String: Any]? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.name = name

            self.uid = uid

            self.conditions = conditions

            self.isActive = isActive

            self.companyId = companyId

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)

            conditions = try container.decode([String].self, forKey: .conditions)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
        }
    }
}
