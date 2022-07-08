

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Orders
     */

    class Item: Codable {
        public var l3Category: Int

        public var id: Int

        public var canCancel: Bool

        public var image: [String]?

        public var color: String?

        public var l3CategoryName: String

        public var l1Category: [String]?

        public var size: String

        public var canReturn: Bool

        public var departmentId: Int

        public var code: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case l3Category = "l3_category"

            case id

            case canCancel = "can_cancel"

            case image

            case color

            case l3CategoryName = "l3_category_name"

            case l1Category = "l1_category"

            case size

            case canReturn = "can_return"

            case departmentId = "department_id"

            case code

            case name
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.l3Category = l3Category

            self.id = id

            self.canCancel = canCancel

            self.image = image

            self.color = color

            self.l3CategoryName = l3CategoryName

            self.l1Category = l1Category

            self.size = size

            self.canReturn = canReturn

            self.departmentId = departmentId

            self.code = code

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            id = try container.decode(Int.self, forKey: .id)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            do {
                image = try container.decode([String].self, forKey: .image)

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

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
