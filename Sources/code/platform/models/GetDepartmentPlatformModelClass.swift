

import Foundation
public extension PlatformClient {
    /*
         Model: GetDepartment
         Used By: Catalog
     */

    class GetDepartment: Codable {
        public var createdBy: UserSerializer?

        public var createdOn: String?

        public var uid: Int?

        public var logo: String?

        public var synonyms: [String]?

        public var pageNo: Int?

        public var pageSize: Int?

        public var isActive: Bool?

        public var itemType: String?

        public var search: String?

        public var modifiedOn: String?

        public var slug: String?

        public var modifiedBy: UserSerializer?

        public var priorityOrder: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case createdOn = "created_on"

            case uid

            case logo

            case synonyms

            case pageNo = "page_no"

            case pageSize = "page_size"

            case isActive = "is_active"

            case itemType = "item_type"

            case search

            case modifiedOn = "modified_on"

            case slug

            case modifiedBy = "modified_by"

            case priorityOrder = "priority_order"

            case name
        }

        public init(createdBy: UserSerializer? = nil, createdOn: String? = nil, isActive: Bool? = nil, itemType: String? = nil, logo: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, priorityOrder: Int? = nil, search: String? = nil, slug: String? = nil, synonyms: [String]? = nil, uid: Int? = nil) {
            self.createdBy = createdBy

            self.createdOn = createdOn

            self.uid = uid

            self.logo = logo

            self.synonyms = synonyms

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.isActive = isActive

            self.itemType = itemType

            self.search = search

            self.modifiedOn = modifiedOn

            self.slug = slug

            self.modifiedBy = modifiedBy

            self.priorityOrder = priorityOrder

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                uid = try container.decode(Int.self, forKey: .uid)

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

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                pageSize = try container.decode(Int.self, forKey: .pageSize)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
