

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountListResponse
         Used By: Serviceability
     */

    class CompanyDpAccountListResponse: Codable {
        public var page: Page

        public var items: [Dp1]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case success
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            self.page = page

            self.items = items

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([Dp1].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CompanyDpAccountListResponse
         Used By: Serviceability
     */

    class CompanyDpAccountListResponse: Codable {
        public var page: Page

        public var items: [Dp1]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case success
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            self.page = page

            self.items = items

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([Dp1].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
