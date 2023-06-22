

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountListResponse
         Used By: Serviceability
     */

    class CompanyDpAccountListResponse: Codable {
        public var success: Bool

        public var items: [Dp1]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case success

            case items

            case page
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            self.success = success

            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            items = try container.decode([Dp1].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CompanyDpAccountListResponse
         Used By: Serviceability
     */

    class CompanyDpAccountListResponse: Codable {
        public var success: Bool

        public var items: [Dp1]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case success

            case items

            case page
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            self.success = success

            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            items = try container.decode([Dp1].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
