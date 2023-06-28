

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var l1CategoryId: Int?

        public var canCancel: Bool?

        public var slugKey: String

        public var l2Category: [String]?

        public var l3Category: Int?

        public var brand: String

        public var itemId: Int

        public var brandId: Int

        public var l1Category: [String]?

        public var attributes: Attributes

        public var size: String

        public var departmentId: Int?

        public var canReturn: Bool?

        public var l3CategoryName: String?

        public var image: [String]

        public var lastUpdatedAt: String?

        public var branchUrl: String?

        public var code: String?

        public var name: String

        public var gender: String?

        public var l2CategoryId: Int?

        public var color: String?

        public var webstoreProductUrl: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case l1CategoryId = "l1_category_id"

            case canCancel = "can_cancel"

            case slugKey = "slug_key"

            case l2Category = "l2_category"

            case l3Category = "l3_category"

            case brand

            case itemId = "item_id"

            case brandId = "brand_id"

            case l1Category = "l1_category"

            case attributes

            case size

            case departmentId = "department_id"

            case canReturn = "can_return"

            case l3CategoryName = "l3_category_name"

            case image

            case lastUpdatedAt = "last_updated_at"

            case branchUrl = "branch_url"

            case code

            case name

            case gender

            case l2CategoryId = "l2_category_id"

            case color

            case webstoreProductUrl = "webstore_product_url"

            case meta
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.l1CategoryId = l1CategoryId

            self.canCancel = canCancel

            self.slugKey = slugKey

            self.l2Category = l2Category

            self.l3Category = l3Category

            self.brand = brand

            self.itemId = itemId

            self.brandId = brandId

            self.l1Category = l1Category

            self.attributes = attributes

            self.size = size

            self.departmentId = departmentId

            self.canReturn = canReturn

            self.l3CategoryName = l3CategoryName

            self.image = image

            self.lastUpdatedAt = lastUpdatedAt

            self.branchUrl = branchUrl

            self.code = code

            self.name = name

            self.gender = gender

            self.l2CategoryId = l2CategoryId

            self.color = color

            self.webstoreProductUrl = webstoreProductUrl

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l1CategoryId = try container.decode(Int.self, forKey: .l1CategoryId)

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

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3Category = try container.decode(Int.self, forKey: .l3Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(String.self, forKey: .brand)

            itemId = try container.decode(Int.self, forKey: .itemId)

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            size = try container.decode(String.self, forKey: .size)

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

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

            do {
                l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            image = try container.decode([String].self, forKey: .image)

            do {
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchUrl = try container.decode(String.self, forKey: .branchUrl)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webstoreProductUrl = try container.decode(String.self, forKey: .webstoreProductUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encode(color, forKey: .color)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var l1CategoryId: Int?

        public var canCancel: Bool?

        public var slugKey: String

        public var l2Category: [String]?

        public var l3Category: Int?

        public var brand: String

        public var itemId: Int

        public var brandId: Int

        public var l1Category: [String]?

        public var attributes: Attributes

        public var size: String

        public var departmentId: Int?

        public var canReturn: Bool?

        public var l3CategoryName: String?

        public var image: [String]

        public var lastUpdatedAt: String?

        public var branchUrl: String?

        public var code: String?

        public var name: String

        public var gender: String?

        public var l2CategoryId: Int?

        public var color: String?

        public var webstoreProductUrl: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case l1CategoryId = "l1_category_id"

            case canCancel = "can_cancel"

            case slugKey = "slug_key"

            case l2Category = "l2_category"

            case l3Category = "l3_category"

            case brand

            case itemId = "item_id"

            case brandId = "brand_id"

            case l1Category = "l1_category"

            case attributes

            case size

            case departmentId = "department_id"

            case canReturn = "can_return"

            case l3CategoryName = "l3_category_name"

            case image

            case lastUpdatedAt = "last_updated_at"

            case branchUrl = "branch_url"

            case code

            case name

            case gender

            case l2CategoryId = "l2_category_id"

            case color

            case webstoreProductUrl = "webstore_product_url"

            case meta
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.l1CategoryId = l1CategoryId

            self.canCancel = canCancel

            self.slugKey = slugKey

            self.l2Category = l2Category

            self.l3Category = l3Category

            self.brand = brand

            self.itemId = itemId

            self.brandId = brandId

            self.l1Category = l1Category

            self.attributes = attributes

            self.size = size

            self.departmentId = departmentId

            self.canReturn = canReturn

            self.l3CategoryName = l3CategoryName

            self.image = image

            self.lastUpdatedAt = lastUpdatedAt

            self.branchUrl = branchUrl

            self.code = code

            self.name = name

            self.gender = gender

            self.l2CategoryId = l2CategoryId

            self.color = color

            self.webstoreProductUrl = webstoreProductUrl

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l1CategoryId = try container.decode(Int.self, forKey: .l1CategoryId)

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

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3Category = try container.decode(Int.self, forKey: .l3Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(String.self, forKey: .brand)

            itemId = try container.decode(Int.self, forKey: .itemId)

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            size = try container.decode(String.self, forKey: .size)

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

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

            do {
                l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            image = try container.decode([String].self, forKey: .image)

            do {
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchUrl = try container.decode(String.self, forKey: .branchUrl)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webstoreProductUrl = try container.decode(String.self, forKey: .webstoreProductUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encode(color, forKey: .color)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
