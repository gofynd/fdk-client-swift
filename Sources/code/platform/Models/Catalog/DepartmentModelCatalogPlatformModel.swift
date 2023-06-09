

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var priorityOrder: Int

        public var modifiedOn: String

        public var cls: String?

        public var verifiedOn: String?

        public var isActive: Bool?

        public var name: String

        public var customJson: [String: Any]?

        public var slug: String

        public var logo: String

        public var uid: Int

        public var id: [String: Any]?

        public var modifiedBy: UserDetail?

        public var createdBy: UserDetail?

        public var synonyms: [String]?

        public var verifiedBy: UserDetail?

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case priorityOrder = "priority_order"

            case modifiedOn = "modified_on"

            case cls = "_cls"

            case verifiedOn = "verified_on"

            case isActive = "is_active"

            case name

            case customJson = "_custom_json"

            case slug

            case logo

            case uid

            case id = "_id"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case synonyms

            case verifiedBy = "verified_by"

            case createdOn = "created_on"
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.priorityOrder = priorityOrder

            self.modifiedOn = modifiedOn

            self.cls = cls

            self.verifiedOn = verifiedOn

            self.isActive = isActive

            self.name = name

            self.customJson = customJson

            self.slug = slug

            self.logo = logo

            self.uid = uid

            self.id = id

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.synonyms = synonyms

            self.verifiedBy = verifiedBy

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                cls = try container.decode(String.self, forKey: .cls)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            logo = try container.decode(String.self, forKey: .logo)

            uid = try container.decode(Int.self, forKey: .uid)

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
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var priorityOrder: Int

        public var modifiedOn: String

        public var cls: String?

        public var verifiedOn: String?

        public var isActive: Bool?

        public var name: String

        public var customJson: [String: Any]?

        public var slug: String

        public var logo: String

        public var uid: Int

        public var id: [String: Any]?

        public var modifiedBy: UserDetail?

        public var createdBy: UserDetail?

        public var synonyms: [String]?

        public var verifiedBy: UserDetail?

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case priorityOrder = "priority_order"

            case modifiedOn = "modified_on"

            case cls = "_cls"

            case verifiedOn = "verified_on"

            case isActive = "is_active"

            case name

            case customJson = "_custom_json"

            case slug

            case logo

            case uid

            case id = "_id"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case synonyms

            case verifiedBy = "verified_by"

            case createdOn = "created_on"
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.priorityOrder = priorityOrder

            self.modifiedOn = modifiedOn

            self.cls = cls

            self.verifiedOn = verifiedOn

            self.isActive = isActive

            self.name = name

            self.customJson = customJson

            self.slug = slug

            self.logo = logo

            self.uid = uid

            self.id = id

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.synonyms = synonyms

            self.verifiedBy = verifiedBy

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                cls = try container.decode(String.self, forKey: .cls)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            logo = try container.decode(String.self, forKey: .logo)

            uid = try container.decode(Int.self, forKey: .uid)

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
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
