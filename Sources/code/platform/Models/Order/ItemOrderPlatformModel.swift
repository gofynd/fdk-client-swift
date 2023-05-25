

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var color: String?

        public var gender: String?

        public var lastUpdatedAt: String?

        public var l1CategoryId: Int?

        public var code: String?

        public var meta: [String: Any]?

        public var l3CategoryName: String?

        public var l2CategoryId: Int?

        public var l1Category: [String]?

        public var canReturn: Bool?

        public var name: String

        public var image: [String]

        public var webstoreProductUrl: String?

        public var departmentId: Int?

        public var canCancel: Bool?

        public var brandId: Int

        public var itemId: Int

        public var l3Category: Int?

        public var attributes: Attributes

        public var brand: String

        public var branchUrl: String?

        public var size: String

        public var slugKey: String

        public var l2Category: [String]?

        public enum CodingKeys: String, CodingKey {
            case color

            case gender

            case lastUpdatedAt = "last_updated_at"

            case l1CategoryId = "l1_category_id"

            case code

            case meta

            case l3CategoryName = "l3_category_name"

            case l2CategoryId = "l2_category_id"

            case l1Category = "l1_category"

            case canReturn = "can_return"

            case name

            case image

            case webstoreProductUrl = "webstore_product_url"

            case departmentId = "department_id"

            case canCancel = "can_cancel"

            case brandId = "brand_id"

            case itemId = "item_id"

            case l3Category = "l3_category"

            case attributes

            case brand

            case branchUrl = "branch_url"

            case size

            case slugKey = "slug_key"

            case l2Category = "l2_category"
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.color = color

            self.gender = gender

            self.lastUpdatedAt = lastUpdatedAt

            self.l1CategoryId = l1CategoryId

            self.code = code

            self.meta = meta

            self.l3CategoryName = l3CategoryName

            self.l2CategoryId = l2CategoryId

            self.l1Category = l1Category

            self.canReturn = canReturn

            self.name = name

            self.image = image

            self.webstoreProductUrl = webstoreProductUrl

            self.departmentId = departmentId

            self.canCancel = canCancel

            self.brandId = brandId

            self.itemId = itemId

            self.l3Category = l3Category

            self.attributes = attributes

            self.brand = brand

            self.branchUrl = branchUrl

            self.size = size

            self.slugKey = slugKey

            self.l2Category = l2Category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1CategoryId = try container.decode(Int.self, forKey: .l1CategoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2CategoryId = try container.decode(Int.self, forKey: .l2CategoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            image = try container.decode([String].self, forKey: .image)

            do {
                webstoreProductUrl = try container.decode(String.self, forKey: .webstoreProductUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandId = try container.decode(Int.self, forKey: .brandId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                l3Category = try container.decode(Int.self, forKey: .l3Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            brand = try container.decode(String.self, forKey: .brand)

            do {
                branchUrl = try container.decode(String.self, forKey: .branchUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(color, forKey: .color)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var color: String?

        public var gender: String?

        public var lastUpdatedAt: String?

        public var l1CategoryId: Int?

        public var code: String?

        public var meta: [String: Any]?

        public var l3CategoryName: String?

        public var l2CategoryId: Int?

        public var l1Category: [String]?

        public var canReturn: Bool?

        public var name: String

        public var image: [String]

        public var webstoreProductUrl: String?

        public var departmentId: Int?

        public var canCancel: Bool?

        public var brandId: Int

        public var itemId: Int

        public var l3Category: Int?

        public var attributes: Attributes

        public var brand: String

        public var branchUrl: String?

        public var size: String

        public var slugKey: String

        public var l2Category: [String]?

        public enum CodingKeys: String, CodingKey {
            case color

            case gender

            case lastUpdatedAt = "last_updated_at"

            case l1CategoryId = "l1_category_id"

            case code

            case meta

            case l3CategoryName = "l3_category_name"

            case l2CategoryId = "l2_category_id"

            case l1Category = "l1_category"

            case canReturn = "can_return"

            case name

            case image

            case webstoreProductUrl = "webstore_product_url"

            case departmentId = "department_id"

            case canCancel = "can_cancel"

            case brandId = "brand_id"

            case itemId = "item_id"

            case l3Category = "l3_category"

            case attributes

            case brand

            case branchUrl = "branch_url"

            case size

            case slugKey = "slug_key"

            case l2Category = "l2_category"
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.color = color

            self.gender = gender

            self.lastUpdatedAt = lastUpdatedAt

            self.l1CategoryId = l1CategoryId

            self.code = code

            self.meta = meta

            self.l3CategoryName = l3CategoryName

            self.l2CategoryId = l2CategoryId

            self.l1Category = l1Category

            self.canReturn = canReturn

            self.name = name

            self.image = image

            self.webstoreProductUrl = webstoreProductUrl

            self.departmentId = departmentId

            self.canCancel = canCancel

            self.brandId = brandId

            self.itemId = itemId

            self.l3Category = l3Category

            self.attributes = attributes

            self.brand = brand

            self.branchUrl = branchUrl

            self.size = size

            self.slugKey = slugKey

            self.l2Category = l2Category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1CategoryId = try container.decode(Int.self, forKey: .l1CategoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2CategoryId = try container.decode(Int.self, forKey: .l2CategoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            image = try container.decode([String].self, forKey: .image)

            do {
                webstoreProductUrl = try container.decode(String.self, forKey: .webstoreProductUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandId = try container.decode(Int.self, forKey: .brandId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                l3Category = try container.decode(Int.self, forKey: .l3Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            brand = try container.decode(String.self, forKey: .brand)

            do {
                branchUrl = try container.decode(String.self, forKey: .branchUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(color, forKey: .color)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)
        }
    }
}
