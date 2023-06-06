

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentModel
         Used By: Catalog
     */

    class DepartmentModel: Codable {
        public var id: [String: Any]?

        public var createdBy: UserDetail?

        public var verifiedBy: UserDetail?

        public var cls: String?

        public var slug: String

        public var createdOn: String

        public var uid: Int

        public var logo: String

        public var isActive: Bool?

        public var priorityOrder: Int

        public var modifiedBy: UserDetail?

        public var customJson: [String: Any]?

        public var verifiedOn: String?

        public var synonyms: [String]?

        public var modifiedOn: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case createdBy = "created_by"

            case verifiedBy = "verified_by"

            case cls = "_cls"

            case slug

            case createdOn = "created_on"

            case uid

            case logo

            case isActive = "is_active"

            case priorityOrder = "priority_order"

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case verifiedOn = "verified_on"

            case synonyms

            case modifiedOn = "modified_on"

            case name
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.id = id

            self.createdBy = createdBy

            self.verifiedBy = verifiedBy

            self.cls = cls

            self.slug = slug

            self.createdOn = createdOn

            self.uid = uid

            self.logo = logo

            self.isActive = isActive

            self.priorityOrder = priorityOrder

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.verifiedOn = verifiedOn

            self.synonyms = synonyms

            self.modifiedOn = modifiedOn

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            slug = try container.decode(String.self, forKey: .slug)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            uid = try container.decode(Int.self, forKey: .uid)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

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

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

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
        public var id: [String: Any]?

        public var createdBy: UserDetail?

        public var verifiedBy: UserDetail?

        public var cls: String?

        public var slug: String

        public var createdOn: String

        public var uid: Int

        public var logo: String

        public var isActive: Bool?

        public var priorityOrder: Int

        public var modifiedBy: UserDetail?

        public var customJson: [String: Any]?

        public var verifiedOn: String?

        public var synonyms: [String]?

        public var modifiedOn: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case createdBy = "created_by"

            case verifiedBy = "verified_by"

            case cls = "_cls"

            case slug

            case createdOn = "created_on"

            case uid

            case logo

            case isActive = "is_active"

            case priorityOrder = "priority_order"

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case verifiedOn = "verified_on"

            case synonyms

            case modifiedOn = "modified_on"

            case name
        }

        public init(createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, priorityOrder: Int, slug: String, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: [String: Any]? = nil) {
            self.id = id

            self.createdBy = createdBy

            self.verifiedBy = verifiedBy

            self.cls = cls

            self.slug = slug

            self.createdOn = createdOn

            self.uid = uid

            self.logo = logo

            self.isActive = isActive

            self.priorityOrder = priorityOrder

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.verifiedOn = verifiedOn

            self.synonyms = synonyms

            self.modifiedOn = modifiedOn

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            slug = try container.decode(String.self, forKey: .slug)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            uid = try container.decode(Int.self, forKey: .uid)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

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

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
