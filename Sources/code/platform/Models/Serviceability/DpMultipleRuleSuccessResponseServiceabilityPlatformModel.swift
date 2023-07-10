

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var items: [DpRule]

        public var page: Page

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case success
        }

        public init(items: [DpRule], page: Page, success: Bool) {
            self.items = items

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DpRule].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var items: [DpRule]

        public var page: Page

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case success
        }

        public init(items: [DpRule], page: Page, success: Bool) {
            self.items = items

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DpRule].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
