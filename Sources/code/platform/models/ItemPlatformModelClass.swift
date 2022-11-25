

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var canReturn: Bool

        public var size: String

        public var l3Category: Int

        public var l1Category: [String]?

        public var color: String?

        public var image: [String]?

        public var departmentId: Int

        public var canCancel: Bool

        public var l3CategoryName: String

        public var code: String

        public var name: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case canReturn = "can_return"

            case size

            case l3Category = "l3_category"

            case l1Category = "l1_category"

            case color

            case image

            case departmentId = "department_id"

            case canCancel = "can_cancel"

            case l3CategoryName = "l3_category_name"

            case code

            case name

            case id
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.canReturn = canReturn

            self.size = size

            self.l3Category = l3Category

            self.l1Category = l1Category

            self.color = color

            self.image = image

            self.departmentId = departmentId

            self.canCancel = canCancel

            self.l3CategoryName = l3CategoryName

            self.code = code

            self.name = name

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            size = try container.decode(String.self, forKey: .size)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

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
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
