

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountListResponse
         Used By: Serviceability
     */

    class CompanyDpAccountListResponse: Codable {
        public var items: [Dp1]

        public var success: Bool

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case success

            case page
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            self.items = items

            self.success = success

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([Dp1].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

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
        public var items: [Dp1]

        public var success: Bool

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case success

            case page
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            self.items = items

            self.success = success

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([Dp1].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
