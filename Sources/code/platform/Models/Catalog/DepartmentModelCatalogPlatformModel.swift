

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var createdOn: String

        public var priorityOrder: Int

        public var synonyms: [String]?

        public var cls: String?

        public var logo: String

        public var createdBy: UserDetail?

        public var slug: String

        public var customJson: [String: Any]?

        public var modifiedBy: UserDetail?

        public var verifiedBy: UserDetail?

        public var isActive: Bool?

        public var modifiedOn: String

        public var name: String

        public var uid: Int

        public var id: [String: Any]?

        public var verifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case priorityOrder = "priority_order"

            case synonyms

            case cls = "_cls"

            case logo

            case createdBy = "created_by"

            case slug

            case customJson = "_custom_json"

            case modifiedBy = "modified_by"

            case verifiedBy = "verified_by"

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case name

            case uid

            case id = "_id"

            case verifiedOn = "verified_on"
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.createdOn = createdOn

            self.priorityOrder = priorityOrder

            self.synonyms = synonyms

            self.cls = cls

            self.logo = logo

            self.createdBy = createdBy

            self.slug = slug

            self.customJson = customJson

            self.modifiedBy = modifiedBy

            self.verifiedBy = verifiedBy

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.name = name

            self.uid = uid

            self.id = id

            self.verifiedOn = verifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var createdOn: String

        public var priorityOrder: Int

        public var synonyms: [String]?

        public var cls: String?

        public var logo: String

        public var createdBy: UserDetail?

        public var slug: String

        public var customJson: [String: Any]?

        public var modifiedBy: UserDetail?

        public var verifiedBy: UserDetail?

        public var isActive: Bool?

        public var modifiedOn: String

        public var name: String

        public var uid: Int

        public var id: [String: Any]?

        public var verifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case priorityOrder = "priority_order"

            case synonyms

            case cls = "_cls"

            case logo

            case createdBy = "created_by"

            case slug

            case customJson = "_custom_json"

            case modifiedBy = "modified_by"

            case verifiedBy = "verified_by"

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case name

            case uid

            case id = "_id"

            case verifiedOn = "verified_on"
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.createdOn = createdOn

            self.priorityOrder = priorityOrder

            self.synonyms = synonyms

            self.cls = cls

            self.logo = logo

            self.createdBy = createdBy

            self.slug = slug

            self.customJson = customJson

            self.modifiedBy = modifiedBy

            self.verifiedBy = verifiedBy

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.name = name

            self.uid = uid

            self.id = id

            self.verifiedOn = verifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
        }
    }
}
