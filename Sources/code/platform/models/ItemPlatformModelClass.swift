

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Orders
     */

    class Item: Codable {
        public var size: String

        public var color: String?

        public var image: [String]?

        public var name: String

        public var canCancel: Bool

        public var l1Category: [String]?

        public var code: String

        public var canReturn: Bool

        public var departmentId: Int

        public var id: Int

        public var l3CategoryName: String

        public var l3Category: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case color

            case image

            case name

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case code

            case canReturn = "can_return"

            case departmentId = "department_id"

            case id

            case l3CategoryName = "l3_category_name"

            case l3Category = "l3_category"
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.size = size

            self.color = color

            self.image = image

            self.name = name

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.code = code

            self.canReturn = canReturn

            self.departmentId = departmentId

            self.id = id

            self.l3CategoryName = l3CategoryName

            self.l3Category = l3Category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                color = try container.decode(String.self, forKey: .color)

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

            name = try container.decode(String.self, forKey: .name)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            id = try container.decode(Int.self, forKey: .id)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            l3Category = try container.decode(Int.self, forKey: .l3Category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)
        }
    }
}
