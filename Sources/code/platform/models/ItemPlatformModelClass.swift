

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Order
     */

    class Item: Codable {
        public var color: String?

        public var departmentId: Int

        public var size: String

        public var l3CategoryName: String

        public var id: Int

        public var l1Category: [String]?

        public var image: [String]?

        public var l3Category: Int

        public var name: String

        public var canCancel: Bool

        public var canReturn: Bool

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case color

            case departmentId = "department_id"

            case size

            case l3CategoryName = "l3_category_name"

            case id

            case l1Category = "l1_category"

            case image

            case l3Category = "l3_category"

            case name

            case canCancel = "can_cancel"

            case canReturn = "can_return"

            case code
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.color = color

            self.departmentId = departmentId

            self.size = size

            self.l3CategoryName = l3CategoryName

            self.id = id

            self.l1Category = l1Category

            self.image = image

            self.l3Category = l3Category

            self.name = name

            self.canCancel = canCancel

            self.canReturn = canReturn

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            size = try container.decode(String.self, forKey: .size)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            id = try container.decode(Int.self, forKey: .id)

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

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            name = try container.decode(String.self, forKey: .name)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(color, forKey: .color)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
