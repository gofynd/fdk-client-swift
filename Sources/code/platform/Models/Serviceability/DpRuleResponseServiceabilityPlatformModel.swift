

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var createdOn: String?

        public var name: String

        public var companyId: Int

        public var conditions: [String]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var dpIds: [String: Any]

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case name

            case companyId = "company_id"

            case conditions

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case dpIds = "dp_ids"

            case uid
        }

        public init(companyId: Int, conditions: [String], createdBy: [String: Any]? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.createdOn = createdOn

            self.name = name

            self.companyId = companyId

            self.conditions = conditions

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.dpIds = dpIds

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            conditions = try container.decode([String].self, forKey: .conditions)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var createdOn: String?

        public var name: String

        public var companyId: Int

        public var conditions: [String]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var dpIds: [String: Any]

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case name

            case companyId = "company_id"

            case conditions

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case dpIds = "dp_ids"

            case uid
        }

        public init(companyId: Int, conditions: [String], createdBy: [String: Any]? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.createdOn = createdOn

            self.name = name

            self.companyId = companyId

            self.conditions = conditions

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.dpIds = dpIds

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            conditions = try container.decode([String].self, forKey: .conditions)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
