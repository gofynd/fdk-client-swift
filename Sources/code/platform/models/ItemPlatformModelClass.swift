

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Orders
     */

    class Item: Codable {
        public var l3CategoryName: String

        public var canCancel: Bool

        public var l1Category: [String]?

        public var image: [String]?

        public var code: String

        public var size: String

        public var l3Category: Int

        public var departmentId: Int

        public var id: Int

        public var canReturn: Bool

        public var color: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case l3CategoryName = "l3_category_name"

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case image

            case code

            case size

            case l3Category = "l3_category"

            case departmentId = "department_id"

            case id

            case canReturn = "can_return"

            case color

            case name
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.l3CategoryName = l3CategoryName

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.image = image

            self.code = code

            self.size = size

            self.l3Category = l3Category

            self.departmentId = departmentId

            self.id = id

            self.canReturn = canReturn

            self.color = color

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

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

            code = try container.decode(String.self, forKey: .code)

            size = try container.decode(String.self, forKey: .size)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            id = try container.decode(Int.self, forKey: .id)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
