

import Foundation
public extension PlatformClient {
    /*
         Model: Item
         Used By: Orders
     */

    class Item: Codable {
        public var canReturn: Bool

        public var id: Int

        public var canCancel: Bool

        public var l1Category: [String]?

        public var code: String

        public var l3CategoryName: String

        public var l3Category: Int

        public var departmentId: Int

        public var size: String

        public var image: [String]?

        public var name: String

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case canReturn = "can_return"

            case id

            case canCancel = "can_cancel"

            case l1Category = "l1_category"

            case code

            case l3CategoryName = "l3_category_name"

            case l3Category = "l3_category"

            case departmentId = "department_id"

            case size

            case image

            case name

            case color
        }

        public init(canCancel: Bool, canReturn: Bool, code: String, color: String? = nil, departmentId: Int, id: Int, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, l3CategoryName: String, name: String, size: String) {
            self.canReturn = canReturn

            self.id = id

            self.canCancel = canCancel

            self.l1Category = l1Category

            self.code = code

            self.l3CategoryName = l3CategoryName

            self.l3Category = l3Category

            self.departmentId = departmentId

            self.size = size

            self.image = image

            self.name = name

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canReturn = try container.decode(Bool.self, forKey: .canReturn)

            id = try container.decode(Int.self, forKey: .id)

            canCancel = try container.decode(Bool.self, forKey: .canCancel)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            departmentId = try container.decode(Int.self, forKey: .departmentId)

            size = try container.decode(String.self, forKey: .size)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(departmentId, forKey: .departmentId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(color, forKey: .color)
        }
    }
}
