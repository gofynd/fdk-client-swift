

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformItem
         Used By: Order
     */

    class PlatformItem: Codable {
        public var departmentId: Int?

        public var brand: String?

        public var image: [String]?

        public var code: String?

        public var l2Category: [String]?

        public var id: Int?

        public var l3CategoryName: String?

        public var attributes: PlatformArticleAttributes?

        public var meta: [String: Any]?

        public var brandId: Int?

        public var branchUrl: String?

        public var name: String?

        public var color: String?

        public var lastUpdatedAt: String?

        public var size: String?

        public var canReturn: Bool?

        public var l3Category: Int?

        public var canCancel: Bool?

        public var l1Category: [String]?

        public var slugKey: String?

        public var images: [String]?

        public enum CodingKeys: String, CodingKey {
            case departmentId = "department_id"

            case brand

            case image

            case code

            case l2Category = "l2_category"

            case id

            case l3CategoryName = "l3_category_name"

            case attributes

            case meta

            case brandId = "brand_id"

            case branchUrl = "branch_url"

            case name

            case color

            case lastUpdatedAt = "last_updated_at"

            case size

            case canReturn = "can_return"

            case l3Category = "l3_category"

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case slugKey = "slug_key"

            case images
        }

        public init(attributes: PlatformArticleAttributes? = nil, branchUrl: String? = nil, brand: String? = nil, brandId: Int? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, id: Int? = nil, image: [String]? = nil, images: [String]? = nil, l1Category: [String]? = nil, l2Category: [String]? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String? = nil, size: String? = nil, slugKey: String? = nil) {
            self.departmentId = departmentId

            self.brand = brand

            self.image = image

            self.code = code

            self.l2Category = l2Category

            self.id = id

            self.l3CategoryName = l3CategoryName

            self.attributes = attributes

            self.meta = meta

            self.brandId = brandId

            self.branchUrl = branchUrl

            self.name = name

            self.color = color

            self.lastUpdatedAt = lastUpdatedAt

            self.size = size

            self.canReturn = canReturn

            self.l3Category = l3Category

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.slugKey = slugKey

            self.images = images
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(String.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

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
                l2Category = try container.decode([String].self, forKey: .l2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                attributes = try container.decode(PlatformArticleAttributes.self, forKey: .attributes)

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
                brandId = try container.decode(Int.self, forKey: .brandId)

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
                name = try container.decode(String.self, forKey: .name)

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
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

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
                l3Category = try container.decode(Int.self, forKey: .l3Category)

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

            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([String].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformItem
         Used By: Order
     */

    class PlatformItem: Codable {
        public var departmentId: Int?

        public var brand: String?

        public var image: [String]?

        public var code: String?

        public var l2Category: [String]?

        public var id: Int?

        public var l3CategoryName: String?

        public var attributes: PlatformArticleAttributes?

        public var meta: [String: Any]?

        public var brandId: Int?

        public var branchUrl: String?

        public var name: String?

        public var color: String?

        public var lastUpdatedAt: String?

        public var size: String?

        public var canReturn: Bool?

        public var l3Category: Int?

        public var canCancel: Bool?

        public var l1Category: [String]?

        public var slugKey: String?

        public var images: [String]?

        public enum CodingKeys: String, CodingKey {
            case departmentId = "department_id"

            case brand

            case image

            case code

            case l2Category = "l2_category"

            case id

            case l3CategoryName = "l3_category_name"

            case attributes

            case meta

            case brandId = "brand_id"

            case branchUrl = "branch_url"

            case name

            case color

            case lastUpdatedAt = "last_updated_at"

            case size

            case canReturn = "can_return"

            case l3Category = "l3_category"

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case slugKey = "slug_key"

            case images
        }

        public init(attributes: PlatformArticleAttributes? = nil, branchUrl: String? = nil, brand: String? = nil, brandId: Int? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, id: Int? = nil, image: [String]? = nil, images: [String]? = nil, l1Category: [String]? = nil, l2Category: [String]? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, lastUpdatedAt: String? = nil, meta: [String: Any]? = nil, name: String? = nil, size: String? = nil, slugKey: String? = nil) {
            self.departmentId = departmentId

            self.brand = brand

            self.image = image

            self.code = code

            self.l2Category = l2Category

            self.id = id

            self.l3CategoryName = l3CategoryName

            self.attributes = attributes

            self.meta = meta

            self.brandId = brandId

            self.branchUrl = branchUrl

            self.name = name

            self.color = color

            self.lastUpdatedAt = lastUpdatedAt

            self.size = size

            self.canReturn = canReturn

            self.l3Category = l3Category

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.slugKey = slugKey

            self.images = images
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departmentId = try container.decode(Int.self, forKey: .departmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(String.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

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
                l2Category = try container.decode([String].self, forKey: .l2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                attributes = try container.decode(PlatformArticleAttributes.self, forKey: .attributes)

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
                brandId = try container.decode(Int.self, forKey: .brandId)

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
                name = try container.decode(String.self, forKey: .name)

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
                lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

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
                l3Category = try container.decode(Int.self, forKey: .l3Category)

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

            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([String].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(l2Category, forKey: .l2Category)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encode(branchUrl, forKey: .branchUrl)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }
}
