

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentListResponse
         Used By: Catalog
     */

    class DepartmentListResponse: Codable {
        public var page: DepartmentPageResponse?

        public var items: [DepartmentModel]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [DepartmentModel]? = nil, page: DepartmentPageResponse? = nil) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(DepartmentPageResponse.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([DepartmentModel].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentListResponse
         Used By: Catalog
     */

    class DepartmentListResponse: Codable {
        public var page: DepartmentPageResponse?

        public var items: [DepartmentModel]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [DepartmentModel]? = nil, page: DepartmentPageResponse? = nil) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(DepartmentPageResponse.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([DepartmentModel].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
