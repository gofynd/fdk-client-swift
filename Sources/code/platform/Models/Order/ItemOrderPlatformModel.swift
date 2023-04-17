

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var itemId: Int

        public var canReturn: Bool?

        public var code: String?

        public var slugKey: String

        public var brand: String

        public var size: String

        public var gender: String?

        public var l1CategoryId: Int?

        public var brandId: Int

        public var l2Category: [String]?

        public var canCancel: Bool?

        public var l1Category: [String]?

        public var image: [String]

        public var meta: [String: Any]?

        public var l3CategoryName: String?

        public var name: String

        public var branchUrl: String?

        public var l3Category: Int?

        public var webstoreProductUrl: String?

        public var departmentId: Int?

        public var attributes: Attributes

        public var lastUpdatedAt: String?

        public var l2CategoryId: Int?

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case canReturn = "can_return"

            case code

            case slugKey = "slug_key"

            case brand

            case size

            case gender

            case l1CategoryId = "l1_category_id"

            case brandId = "brand_id"

            case l2Category = "l2_category"

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case image

            case meta

            case l3CategoryName = "l3_category_name"

            case name

            case branchUrl = "branch_url"

            case l3Category = "l3_category"

            case webstoreProductUrl = "webstore_product_url"

            case departmentId = "department_id"

            case attributes

            case lastUpdatedAt = "last_updated_at"

            case l2CategoryId = "l2_category_id"

            case color
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.itemId = itemId

            self.canReturn = canReturn

            self.code = code

            self.slugKey = slugKey

            self.brand = brand

            self.size = size

            self.gender = gender

            self.l1CategoryId = l1CategoryId

            self.brandId = brandId

            self.l2Category = l2Category

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.image = image

            self.meta = meta

            self.l3CategoryName = l3CategoryName

            self.name = name

            self.branchUrl = branchUrl

            self.l3Category = l3Category

            self.webstoreProductUrl = webstoreProductUrl

            self.departmentId = departmentId

            self.attributes = attributes

            self.lastUpdatedAt = lastUpdatedAt

            self.l2CategoryId = l2CategoryId

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            slugKey = try container.decode(String.self, forKey: .slugKey)

            brand = try container.decode(String.self, forKey: .brand)

            size = try container.decode(String.self, forKey: .size)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

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
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            image = try container.decode([String].self, forKey: .image)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                branchUrl = try container.decode(String.self, forKey: .branchUrl)

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

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            do {
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encode(color, forKey: .color)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var itemId: Int

        public var canReturn: Bool?

        public var code: String?

        public var slugKey: String

        public var brand: String

        public var size: String

        public var gender: String?

        public var l1CategoryId: Int?

        public var brandId: Int

        public var l2Category: [String]?

        public var canCancel: Bool?

        public var l1Category: [String]?

        public var image: [String]

        public var meta: [String: Any]?

        public var l3CategoryName: String?

        public var name: String

        public var branchUrl: String?

        public var l3Category: Int?

        public var webstoreProductUrl: String?

        public var departmentId: Int?

        public var attributes: Attributes

        public var lastUpdatedAt: String?

        public var l2CategoryId: Int?

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case canReturn = "can_return"

            case code

            case slugKey = "slug_key"

            case brand

            case size

            case gender

            case l1CategoryId = "l1_category_id"

            case brandId = "brand_id"

            case l2Category = "l2_category"

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case image

            case meta

            case l3CategoryName = "l3_category_name"

            case name

            case branchUrl = "branch_url"

            case l3Category = "l3_category"

            case webstoreProductUrl = "webstore_product_url"

            case departmentId = "department_id"

            case attributes

            case lastUpdatedAt = "last_updated_at"

            case l2CategoryId = "l2_category_id"

            case color
        }

        public init(attributes: Attributes, branchUrl: String? = nil, brand: String, brandId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, gender: String? = nil, image: [String], itemId: Int, l1Category: [String]? = nil, l1CategoryId: Int? = nil, l2Category: [String]? = nil, l2CategoryId: Int? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String, size: String, slugKey: String, webstoreProductUrl: String? = nil) {
            self.itemId = itemId

            self.canReturn = canReturn

            self.code = code

            self.slugKey = slugKey

            self.brand = brand

            self.size = size

            self.gender = gender

            self.l1CategoryId = l1CategoryId

            self.brandId = brandId

            self.l2Category = l2Category

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.image = image

            self.meta = meta

            self.l3CategoryName = l3CategoryName

            self.name = name

            self.branchUrl = branchUrl

            self.l3Category = l3Category

            self.webstoreProductUrl = webstoreProductUrl

            self.departmentId = departmentId

            self.attributes = attributes

            self.lastUpdatedAt = lastUpdatedAt

            self.l2CategoryId = l2CategoryId

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            slugKey = try container.decode(String.self, forKey: .slugKey)

            brand = try container.decode(String.self, forKey: .brand)

            size = try container.decode(String.self, forKey: .size)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)

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
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            image = try container.decode([String].self, forKey: .image)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                branchUrl = try container.decode(String.self, forKey: .branchUrl)

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

            attributes = try container.decode(Attributes.self, forKey: .attributes)

            do {
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encode(webstoreProductUrl, forKey: .webstoreProductUrl)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)

            try? container.encode(color, forKey: .color)
        }
    }
}
