

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var name: String

        public var size: String

        public var l3CategoryName: String

        public var color: String?

        public var id: Int

        public var departmentId: Int

        public var code: String

        public var image: [String]?

        public var l3Category: Int

        public var l1Category: [String]?

        public var canReturn: Bool

        public var canCancel: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case size

            case l3CategoryName = "l3_category_name"

            case color

            case id

            case departmentId = "department_id"

            case code

            case image

            case l3Category = "l3_category"

            case l1Category = "l1_category"

            case canReturn = "can_return"

            case canCancel = "can_cancel"
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.name = name

            self.size = size

            self.l3CategoryName = l3CategoryName

            self.color = color

            self.id = id

            self.departmentId = departmentId

            self.code = code

            self.image = image

            self.l3Category = l3Category

            self.l1Category = l1Category

            self.canReturn = canReturn

            self.canCancel = canCancel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            size = try container.decode(String.self, forKey: .size)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            code = try container.decode(String.self, forKey: .code)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
        }
    }
}
