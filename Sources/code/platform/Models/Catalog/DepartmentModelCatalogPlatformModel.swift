

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var logo: [String: Any]

        public var customJson: [String: Any]?

        public var createdBy: UserDetail?

        public var slug: [String: Any]?

        public var isActive: Bool?

        public var id: [String: Any]?

        public var modifiedBy: UserDetail?

        public var synonyms: [[String: Any]]?

        public var uid: Int?

        public var verifiedOn: String?

        public var cls: [String: Any]?

        public var modifiedOn: String

        public var verifiedBy: UserDetail?

        public var priorityOrder: Int

        public var createdOn: String

        public var name: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case logo

            case customJson = "_custom_json"

            case createdBy = "created_by"

            case slug

            case isActive = "is_active"

            case id = "_id"

            case modifiedBy = "modified_by"

            case synonyms

            case uid

            case verifiedOn = "verified_on"

            case cls = "_cls"

            case modifiedOn = "modified_on"

            case verifiedBy = "verified_by"

            case priorityOrder = "priority_order"

            case createdOn = "created_on"

            case name
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: [String: Any], modifiedBy: UserDetail? = nil, modifiedOn: String, name: [String: Any], priorityOrder: Int, slug: [String: Any]? = nil, synonyms: [[String: Any]]? = nil, uid: Int? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: [String: Any]? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.logo = logo

            self.customJson = customJson

            self.createdBy = createdBy

            self.slug = slug

            self.isActive = isActive

            self.id = id

            self.modifiedBy = modifiedBy

            self.synonyms = synonyms

            self.uid = uid

            self.verifiedOn = verifiedOn

            self.cls = cls

            self.modifiedOn = modifiedOn

            self.verifiedBy = verifiedBy

            self.priorityOrder = priorityOrder

            self.createdOn = createdOn

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode([String: Any].self, forKey: .logo)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

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

            do {
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([[String: Any]].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode([String: Any].self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            name = try container.decode([String: Any].self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var logo: [String: Any]

        public var customJson: [String: Any]?

        public var createdBy: UserDetail?

        public var slug: [String: Any]?

        public var isActive: Bool?

        public var id: [String: Any]?

        public var modifiedBy: UserDetail?

        public var synonyms: [[String: Any]]?

        public var uid: Int?

        public var verifiedOn: String?

        public var cls: [String: Any]?

        public var modifiedOn: String

        public var verifiedBy: UserDetail?

        public var priorityOrder: Int

        public var createdOn: String

        public var name: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case logo

            case customJson = "_custom_json"

            case createdBy = "created_by"

            case slug

            case isActive = "is_active"

            case id = "_id"

            case modifiedBy = "modified_by"

            case synonyms

            case uid

            case verifiedOn = "verified_on"

            case cls = "_cls"

            case modifiedOn = "modified_on"

            case verifiedBy = "verified_by"

            case priorityOrder = "priority_order"

            case createdOn = "created_on"

            case name
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: [String: Any], modifiedBy: UserDetail? = nil, modifiedOn: String, name: [String: Any], priorityOrder: Int, slug: [String: Any]? = nil, synonyms: [[String: Any]]? = nil, uid: Int? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: [String: Any]? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.logo = logo

            self.customJson = customJson

            self.createdBy = createdBy

            self.slug = slug

            self.isActive = isActive

            self.id = id

            self.modifiedBy = modifiedBy

            self.synonyms = synonyms

            self.uid = uid

            self.verifiedOn = verifiedOn

            self.cls = cls

            self.modifiedOn = modifiedOn

            self.verifiedBy = verifiedBy

            self.priorityOrder = priorityOrder

            self.createdOn = createdOn

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode([String: Any].self, forKey: .logo)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

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

            do {
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([[String: Any]].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode([String: Any].self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            name = try container.decode([String: Any].self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
