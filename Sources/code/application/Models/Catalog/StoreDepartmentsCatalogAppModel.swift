

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: StoreDepartments
         Used By: Catalog
     */
    class StoreDepartments: Codable {
        public var logo: [String: Any]?

        public var name: String?

        public var slug: String?

        public var uid: Int?

        public var priorityOrder: Int?

        public enum CodingKeys: String, CodingKey {
            case logo

            case name

            case slug

            case uid

            case priorityOrder = "priority_order"
        }

        public init(logo: [String: Any]? = nil, name: String? = nil, priorityOrder: Int? = nil, slug: String? = nil, uid: Int? = nil) {
            self.logo = logo

            self.name = name

            self.slug = slug

            self.uid = uid

            self.priorityOrder = priorityOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode([String: Any].self, forKey: .logo)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        }
    }
}
