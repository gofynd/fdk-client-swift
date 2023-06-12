

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var success: Bool

        public var totalCount: Int

        public var page: Page

        public var items: [DpRuleResponse]

        public enum CodingKeys: String, CodingKey {
            case success

            case totalCount = "total_count"

            case page

            case items
        }

        public init(items: [DpRuleResponse], page: Page, success: Bool, totalCount: Int) {
            self.success = success

            self.totalCount = totalCount

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([DpRuleResponse].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var success: Bool

        public var totalCount: Int

        public var page: Page

        public var items: [DpRuleResponse]

        public enum CodingKeys: String, CodingKey {
            case success

            case totalCount = "total_count"

            case page

            case items
        }

        public init(items: [DpRuleResponse], page: Page, success: Bool, totalCount: Int) {
            self.success = success

            self.totalCount = totalCount

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([DpRuleResponse].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
