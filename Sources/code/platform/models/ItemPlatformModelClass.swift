

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Orders
     */

    class Item: Codable {
        public var code: String

        public var size: String

        public var image: [String]?

        public var id: Int

        public var canReturn: Bool

        public var l3CategoryName: String

        public var canCancel: Bool

        public var name: String

        public var departmentId: Int

        public var l1Category: [String]?

        public var l3Category: Int

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case size

            case image

            case id

            case canReturn = "can_return"

            case l3CategoryName = "l3_category_name"

            case canCancel = "can_cancel"

            case name

            case departmentId = "department_id"

            case l1Category = "l1_category"

            case l3Category = "l3_category"

            case color
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.code = code

            self.size = size

            self.image = image

            self.id = id

            self.canReturn = canReturn

            self.l3CategoryName = l3CategoryName

            self.canCancel = canCancel

            self.name = name

            self.departmentId = departmentId

            self.l1Category = l1Category

            self.l3Category = l3Category

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            size = try container.decode(String.self, forKey: .size)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            name = try container.decode(String.self, forKey: .name)

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encode(color, forKey: .color)
        }
    }
}
