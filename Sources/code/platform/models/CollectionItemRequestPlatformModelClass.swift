

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionItemRequest
         Used By: Catalog
     */

    class CollectionItemRequest: Codable {
        public var q: String?

        public var pageNo: Int?

        public var pageSize: Int?

        public var sort: String?

        public var department: String?

        public var variant: String?

        public enum CodingKeys: String, CodingKey {
            case q

            case pageNo = "page_no"

            case pageSize = "page_size"

            case sort

            case department

            case variant
        }

        public init(department: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, q: String? = nil, sort: String? = nil, variant: String? = nil) {
            self.q = q

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.sort = sort

            self.department = department

            self.variant = variant
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                q = try container.decode(String.self, forKey: .q)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageNo = try container.decode(Int.self, forKey: .pageNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageSize = try container.decode(Int.self, forKey: .pageSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sort = try container.decode(String.self, forKey: .sort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                department = try container.decode(String.self, forKey: .department)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variant = try container.decode(String.self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(q, forKey: .q)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(variant, forKey: .variant)
        }
    }
}
