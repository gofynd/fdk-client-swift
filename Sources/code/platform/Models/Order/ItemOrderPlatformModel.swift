

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var slugKey: String

        public var l3Category: Int?

        public var canReturn: Bool?

        public var size: String

        public var name: String

        public var attributes: Attributes

        public var itemId: Int

        public var l2CategoryId: Int?

        public var l3CategoryName: String?

        public var canCancel: Bool?

        public var l2Category: [String]?

        public var color: String?

        public var meta: [String: Any]?

        public var l1Category: [String]?

        public var webstoreProductUrl: String?

        public var l1CategoryId: Int?

        public var gender: String?

        public var brand: String

        public var brandId: Int

        public var lastUpdatedAt: String?

        public var branchUrl: String?

        public var image: [String]

        public var departmentId: Int?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case slugKey = "slug_key"

            case l3Category = "l3_category"

            case canReturn = "can_return"

            case size

            case name

            case attributes

            case itemId = "item_id"

            case l2CategoryId = "l2_category_id"

            case l3CategoryName = "l3_category_name"

            case canCancel = "can_cancel"

            case l2Category = "l2_category"

            case color

            case meta

            case l1Category = "l1_category"

            case webstoreProductUrl = "webstore_product_url"

            case l1CategoryId = "l1_category_id"

            case gender

            case brand

            case brandId = "brand_id"

            case lastUpdatedAt = "last_updated_at"

            case branchUrl = "branch_url"

            case image

            case departmentId = "department_id"

            case code
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.slugKey = slugKey

            self.l3Category = l3Category

            self.canReturn = canReturn

            self.size = size

            self.name = name

            self.attributes = attributes

            self.itemId = itemId

            self.l2CategoryId = l2CategoryId

            self.l3CategoryName = l3CategoryName

            self.canCancel = canCancel

            self.l2Category = l2Category

            self.color = color

            self.meta = meta

            self.l1Category = l1Category

            self.webstoreProductUrl = webstoreProductUrl

            self.l1CategoryId = l1CategoryId

            self.gender = gender

            self.brand = brand

            self.brandId = brandId

            self.lastUpdatedAt = lastUpdatedAt

            self.branchUrl = branchUrl

            self.image = image

            self.departmentId = departmentId

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l3Category = try container.decode(Int.self, forKey: .l3Category)

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

            size = try container.decode(String.self, forKey: .size)

            name = try container.decode(String.self, forKey: .name)

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                l2CategoryId = try container.decode(Int.self, forKey: .l2CategoryId)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                webstoreProductUrl = try container.decode(String.self, forKey: .webstoreProductUrl)

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
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(String.self, forKey: .brand)

            brandId = try container.decode(Int.self, forKey: .brandId)

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

            image = try container.decode([String].self, forKey: .image)

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var slugKey: String

        public var l3Category: Int?

        public var canReturn: Bool?

        public var size: String

        public var name: String

        public var attributes: Attributes

        public var itemId: Int

        public var l2CategoryId: Int?

        public var l3CategoryName: String?

        public var canCancel: Bool?

        public var l2Category: [String]?

        public var color: String?

        public var meta: [String: Any]?

        public var l1Category: [String]?

        public var webstoreProductUrl: String?

        public var l1CategoryId: Int?

        public var gender: String?

        public var brand: String

        public var brandId: Int

        public var lastUpdatedAt: String?

        public var branchUrl: String?

        public var image: [String]

        public var departmentId: Int?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case slugKey = "slug_key"

            case l3Category = "l3_category"

            case canReturn = "can_return"

            case size

            case name

            case attributes

            case itemId = "item_id"

            case l2CategoryId = "l2_category_id"

            case l3CategoryName = "l3_category_name"

            case canCancel = "can_cancel"

            case l2Category = "l2_category"

            case color

            case meta

            case l1Category = "l1_category"

            case webstoreProductUrl = "webstore_product_url"

            case l1CategoryId = "l1_category_id"

            case gender

            case brand

            case brandId = "brand_id"

            case lastUpdatedAt = "last_updated_at"

            case branchUrl = "branch_url"

            case image

            case departmentId = "department_id"

            case code
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.slugKey = slugKey

            self.l3Category = l3Category

            self.canReturn = canReturn

            self.size = size

            self.name = name

            self.attributes = attributes

            self.itemId = itemId

            self.l2CategoryId = l2CategoryId

            self.l3CategoryName = l3CategoryName

            self.canCancel = canCancel

            self.l2Category = l2Category

            self.color = color

            self.meta = meta

            self.l1Category = l1Category

            self.webstoreProductUrl = webstoreProductUrl

            self.l1CategoryId = l1CategoryId

            self.gender = gender

            self.brand = brand

            self.brandId = brandId

            self.lastUpdatedAt = lastUpdatedAt

            self.branchUrl = branchUrl

            self.image = image

            self.departmentId = departmentId

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l3Category = try container.decode(Int.self, forKey: .l3Category)

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

            size = try container.decode(String.self, forKey: .size)

            name = try container.decode(String.self, forKey: .name)

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                l2CategoryId = try container.decode(Int.self, forKey: .l2CategoryId)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                webstoreProductUrl = try container.decode(String.self, forKey: .webstoreProductUrl)

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
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(String.self, forKey: .brand)

            brandId = try container.decode(Int.self, forKey: .brandId)

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

            image = try container.decode([String].self, forKey: .image)

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}