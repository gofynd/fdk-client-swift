

import Foundation
public extension PlatformClient {
    /*
         Model: GetDepartment
         Used By: Catalog
     */

    class GetDepartment: Codable {
        public var slug: String?

        public var pageSize: Int?

        public var createdBy: UserSerializer?

        public var itemType: String?

        public var name: String?

        public var priorityOrder: Int?

        public var pageNo: Int?

        public var modifiedOn: String?

        public var uid: Int?

        public var modifiedBy: UserSerializer?

        public var isActive: Bool?

        public var createdOn: String?

        public var search: String?

        public var synonyms: [String]?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case pageSize = "page_size"

            case createdBy = "created_by"

            case itemType = "item_type"

            case name

            case priorityOrder = "priority_order"

            case pageNo = "page_no"

            case modifiedOn = "modified_on"

            case uid

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case createdOn = "created_on"

            case search

            case synonyms

            case logo
        }

        public init(createdBy: UserSerializer? = nil, createdOn: String? = nil, isActive: Bool? = nil, itemType: String? = nil, logo: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, priorityOrder: Int? = nil, search: String? = nil, slug: String? = nil, synonyms: [String]? = nil, uid: Int? = nil) {
            self.slug = slug

            self.pageSize = pageSize

            self.createdBy = createdBy

            self.itemType = itemType

            self.name = name

            self.priorityOrder = priorityOrder

            self.pageNo = pageNo

            self.modifiedOn = modifiedOn

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.createdOn = createdOn

            self.search = search

            self.synonyms = synonyms

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageSize = try container.decode(Int.self, forKey: .pageSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageNo = try container.decode(Int.self, forKey: .pageNo)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                search = try container.decode(String.self, forKey: .search)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
