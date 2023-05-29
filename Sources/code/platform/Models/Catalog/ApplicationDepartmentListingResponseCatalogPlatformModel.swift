

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ApplicationDepartmentListingResponse
         Used By: Catalog
     */

    class ApplicationDepartmentListingResponse: Codable {
        public var page: Page

        public var items: [ApplicationDepartment]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [ApplicationDepartment]? = nil, page: Page) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ApplicationDepartment].self, forKey: .items)

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
         Model: ApplicationDepartmentListingResponse
         Used By: Catalog
     */

    class ApplicationDepartmentListingResponse: Codable {
        public var page: Page

        public var items: [ApplicationDepartment]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [ApplicationDepartment]? = nil, page: Page) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ApplicationDepartment].self, forKey: .items)

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
