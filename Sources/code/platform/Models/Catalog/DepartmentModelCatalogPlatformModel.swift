

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var uid: Int

        public var createdBy: UserDetail?

        public var logo: String

        public var priorityOrder: Int

        public var cls: String?

        public var modifiedBy: UserDetail?

        public var customJson: [String: Any]?

        public var createdOn: String

        public var modifiedOn: String

        public var verifiedBy: UserDetail?

        public var id: [String: Any]?

        public var slug: String

        public var synonyms: [String]?

        public var verifiedOn: String?

        public var name: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case uid

            case createdBy = "created_by"

            case logo

            case priorityOrder = "priority_order"

            case cls = "_cls"

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case verifiedBy = "verified_by"

            case id = "_id"

            case slug

            case synonyms

            case verifiedOn = "verified_on"

            case name

            case isActive = "is_active"
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.uid = uid

            self.createdBy = createdBy

            self.logo = logo

            self.priorityOrder = priorityOrder

            self.cls = cls

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.verifiedBy = verifiedBy

            self.id = id

            self.slug = slug

            self.synonyms = synonyms

            self.verifiedOn = verifiedOn

            self.name = name

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                cls = try container.decode(String.self, forKey: .cls)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var uid: Int

        public var createdBy: UserDetail?

        public var logo: String

        public var priorityOrder: Int

        public var cls: String?

        public var modifiedBy: UserDetail?

        public var customJson: [String: Any]?

        public var createdOn: String

        public var modifiedOn: String

        public var verifiedBy: UserDetail?

        public var id: [String: Any]?

        public var slug: String

        public var synonyms: [String]?

        public var verifiedOn: String?

        public var name: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case uid

            case createdBy = "created_by"

            case logo

            case priorityOrder = "priority_order"

            case cls = "_cls"

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case verifiedBy = "verified_by"

            case id = "_id"

            case slug

            case synonyms

            case verifiedOn = "verified_on"

            case name

            case isActive = "is_active"
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.uid = uid

            self.createdBy = createdBy

            self.logo = logo

            self.priorityOrder = priorityOrder

            self.cls = cls

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.verifiedBy = verifiedBy

            self.id = id

            self.slug = slug

            self.synonyms = synonyms

            self.verifiedOn = verifiedOn

            self.name = name

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                cls = try container.decode(String.self, forKey: .cls)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
