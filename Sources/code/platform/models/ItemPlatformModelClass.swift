

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Orders
     */

    class Item: Codable {
        public var canReturn: Bool

        public var code: String

        public var l1Category: [String]?

        public var departmentId: Int

        public var l3CategoryName: String

        public var id: Int

        public var l3Category: Int

        public var color: String?

        public var size: String

        public var image: [String]?

        public var canCancel: Bool

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case canReturn = "can_return"

            case code

            case l1Category = "l1_category"

            case departmentId = "department_id"

            case l3CategoryName = "l3_category_name"

            case id

            case l3Category = "l3_category"

            case color

            case size

            case image

            case canCancel = "can_cancel"

            case name
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.canReturn = canReturn

            self.code = code

            self.l1Category = l1Category

            self.departmentId = departmentId

            self.l3CategoryName = l3CategoryName

            self.id = id

            self.l3Category = l3Category

            self.color = color

            self.size = size

            self.image = image

            self.canCancel = canCancel

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            code = try container.decode(String.self, forKey: .code)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            id = try container.decode(Int.self, forKey: .id)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
