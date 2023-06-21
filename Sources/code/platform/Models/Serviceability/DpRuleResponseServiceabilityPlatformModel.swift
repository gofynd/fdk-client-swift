

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var uid: String

        public var isActive: Bool?

        public var modifiedOn: String?

        public var conditions: [String]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var dpIds: [String: Any]

        public var name: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case uid

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case conditions

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case dpIds = "dp_ids"

            case name

            case companyId = "company_id"
        }

        public init(companyId: Int, conditions: [String], createdBy: [String: Any]? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.uid = uid

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.conditions = conditions

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.dpIds = dpIds

            self.name = name

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var uid: String

        public var isActive: Bool?

        public var modifiedOn: String?

        public var conditions: [String]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var dpIds: [String: Any]

        public var name: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case uid

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case conditions

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case dpIds = "dp_ids"

            case name

            case companyId = "company_id"
        }

        public init(companyId: Int, conditions: [String], createdBy: [String: Any]? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.uid = uid

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.conditions = conditions

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.dpIds = dpIds

            self.name = name

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
