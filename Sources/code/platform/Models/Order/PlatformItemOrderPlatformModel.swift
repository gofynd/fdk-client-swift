

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformItem
         Used By: Order
     */

    class PlatformItem: Codable {
        public var image: [String]?

        public var l1Category: [String]?

        public var canCancel: Bool?

        public var l3CategoryName: String?

        public var images: [String]?

        public var size: String?

        public var departmentId: Int?

        public var canReturn: Bool?

        public var color: String?

        public var code: String?

        public var l3Category: Int?

        public var name: String?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case image

            case l1Category = "l1_category"

            case canCancel = "can_cancel"

            case l3CategoryName = "l3_category_name"

            case images

            case size

            case departmentId = "department_id"

            case canReturn = "can_return"

            case color

            case code

            case l3Category = "l3_category"

            case name

            case id
        }

        public init(canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, id: Int? = nil, image: [String]? = nil, images: [String]? = nil, l1Category: [String]? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, name: String? = nil, size: String? = nil) {
            self.image = image

            self.l1Category = l1Category

            self.canCancel = canCancel

            self.l3CategoryName = l3CategoryName

            self.images = images

            self.size = size

            self.departmentId = departmentId

            self.canReturn = canReturn

            self.color = color

            self.code = code

            self.l3Category = l3Category

            self.name = name

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode([String].self, forKey: .image)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                images = try container.decode([String].self, forKey: .images)

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
                color = try container.decode(String.self, forKey: .color)

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
                l3Category = try container.decode(Int.self, forKey: .l3Category)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformItem
         Used By: Order
     */

    class PlatformItem: Codable {
        public var image: [String]?

        public var l1Category: [String]?

        public var canCancel: Bool?

        public var l3CategoryName: String?

        public var images: [String]?

        public var size: String?

        public var departmentId: Int?

        public var canReturn: Bool?

        public var color: String?

        public var code: String?

        public var l3Category: Int?

        public var name: String?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case image

            case l1Category = "l1_category"

            case canCancel = "can_cancel"

            case l3CategoryName = "l3_category_name"

            case images

            case size

            case departmentId = "department_id"

            case canReturn = "can_return"

            case color

            case code

            case l3Category = "l3_category"

            case name

            case id
        }

        public init(canCancel: Bool? = nil, canReturn: Bool? = nil, code: String? = nil, color: String? = nil, departmentId: Int? = nil, id: Int? = nil, image: [String]? = nil, images: [String]? = nil, l1Category: [String]? = nil, l3Category: Int? = nil, l3CategoryName: String? = nil, name: String? = nil, size: String? = nil) {
            self.image = image

            self.l1Category = l1Category

            self.canCancel = canCancel

            self.l3CategoryName = l3CategoryName

            self.images = images

            self.size = size

            self.departmentId = departmentId

            self.canReturn = canReturn

            self.color = color

            self.code = code

            self.l3Category = l3Category

            self.name = name

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode([String].self, forKey: .image)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                images = try container.decode([String].self, forKey: .images)

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
                color = try container.decode(String.self, forKey: .color)

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
                l3Category = try container.decode(Int.self, forKey: .l3Category)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
