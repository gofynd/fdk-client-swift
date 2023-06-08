

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var modifiedBy: String?

        public var companyId: Int

        public var uid: String

        public var dpIds: [String: Any]

        public var createdOn: String?

        public var name: String

        public var createdBy: String?

        public var isActive: Bool?

        public var conditions: [String]

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case uid

            case dpIds = "dp_ids"

            case createdOn = "created_on"

            case name

            case createdBy = "created_by"

            case isActive = "is_active"

            case conditions

            case modifiedOn = "modified_on"
        }

        public init(companyId: Int, conditions: [String], createdBy: String? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: String? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.uid = uid

            self.dpIds = dpIds

            self.createdOn = createdOn

            self.name = name

            self.createdBy = createdBy

            self.isActive = isActive

            self.conditions = conditions

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            uid = try container.decode(String.self, forKey: .uid)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

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

            conditions = try container.decode([String].self, forKey: .conditions)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleResponse
         Used By: Serviceability
     */

    class DpRuleResponse: Codable {
        public var modifiedBy: String?

        public var companyId: Int

        public var uid: String

        public var dpIds: [String: Any]

        public var createdOn: String?

        public var name: String

        public var createdBy: String?

        public var isActive: Bool?

        public var conditions: [String]

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case uid

            case dpIds = "dp_ids"

            case createdOn = "created_on"

            case name

            case createdBy = "created_by"

            case isActive = "is_active"

            case conditions

            case modifiedOn = "modified_on"
        }

        public init(companyId: Int, conditions: [String], createdBy: String? = nil, createdOn: String? = nil, dpIds: [String: Any], isActive: Bool? = nil, modifiedBy: String? = nil, modifiedOn: String? = nil, name: String, uid: String) {
            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.uid = uid

            self.dpIds = dpIds

            self.createdOn = createdOn

            self.name = name

            self.createdBy = createdBy

            self.isActive = isActive

            self.conditions = conditions

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            uid = try container.decode(String.self, forKey: .uid)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

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

            conditions = try container.decode([String].self, forKey: .conditions)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
