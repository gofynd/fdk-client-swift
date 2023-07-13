

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var synonyms: [[String: Any]]?

        public var verifiedBy: UserDetail?

        public var verifiedOn: String?

        public var modifiedOn: String

        public var id: [String: Any]?

        public var isActive: Bool?

        public var priorityOrder: Int

        public var cls: [String: Any]?

        public var customJson: [String: Any]?

        public var name: [String: Any]

        public var createdOn: String

        public var logo: [String: Any]

        public var uid: Int

        public var createdBy: UserDetail?

        public var modifiedBy: UserDetail?

        public var slug: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case synonyms

            case verifiedBy = "verified_by"

            case verifiedOn = "verified_on"

            case modifiedOn = "modified_on"

            case id = "_id"

            case isActive = "is_active"

            case priorityOrder = "priority_order"

            case cls = "_cls"

            case customJson = "_custom_json"

            case name

            case createdOn = "created_on"

            case logo

            case uid

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case slug
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: [String: Any], modifiedBy: UserDetail? = nil, modifiedOn: String, name: [String: Any], priorityOrder: Int, slug: [String: Any], synonyms: [[String: Any]]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: [String: Any]? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.synonyms = synonyms

            self.verifiedBy = verifiedBy

            self.verifiedOn = verifiedOn

            self.modifiedOn = modifiedOn

            self.id = id

            self.isActive = isActive

            self.priorityOrder = priorityOrder

            self.cls = cls

            self.customJson = customJson

            self.name = name

            self.createdOn = createdOn

            self.logo = logo

            self.uid = uid

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                synonyms = try container.decode([[String: Any]].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                cls = try container.decode([String: Any].self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            logo = try container.decode([String: Any].self, forKey: .logo)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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

            slug = try container.decode([String: Any].self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var synonyms: [[String: Any]]?

        public var verifiedBy: UserDetail?

        public var verifiedOn: String?

        public var modifiedOn: String

        public var id: [String: Any]?

        public var isActive: Bool?

        public var priorityOrder: Int

        public var cls: [String: Any]?

        public var customJson: [String: Any]?

        public var name: [String: Any]

        public var createdOn: String

        public var logo: [String: Any]

        public var uid: Int

        public var createdBy: UserDetail?

        public var modifiedBy: UserDetail?

        public var slug: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case synonyms

            case verifiedBy = "verified_by"

            case verifiedOn = "verified_on"

            case modifiedOn = "modified_on"

            case id = "_id"

            case isActive = "is_active"

            case priorityOrder = "priority_order"

            case cls = "_cls"

            case customJson = "_custom_json"

            case name

            case createdOn = "created_on"

            case logo

            case uid

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case slug
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: [String: Any], modifiedBy: UserDetail? = nil, modifiedOn: String, name: [String: Any], priorityOrder: Int, slug: [String: Any], synonyms: [[String: Any]]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: [String: Any]? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.synonyms = synonyms

            self.verifiedBy = verifiedBy

            self.verifiedOn = verifiedOn

            self.modifiedOn = modifiedOn

            self.id = id

            self.isActive = isActive

            self.priorityOrder = priorityOrder

            self.cls = cls

            self.customJson = customJson

            self.name = name

            self.createdOn = createdOn

            self.logo = logo

            self.uid = uid

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                synonyms = try container.decode([[String: Any]].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                cls = try container.decode([String: Any].self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            logo = try container.decode([String: Any].self, forKey: .logo)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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

            slug = try container.decode([String: Any].self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
