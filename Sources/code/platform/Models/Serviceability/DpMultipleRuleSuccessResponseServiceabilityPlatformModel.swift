

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var items: [DpRuleResponse]

        public var page: Page

        public var success: Bool

        public var totalCount: Int

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case success

            case totalCount = "total_count"
        }

        public init(items: [DpRuleResponse], page: Page, success: Bool, totalCount: Int) {
            self.items = items

            self.page = page

            self.success = success

            self.totalCount = totalCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DpRuleResponse].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var items: [DpRuleResponse]

        public var page: Page

        public var success: Bool

        public var totalCount: Int

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case success

            case totalCount = "total_count"
        }

        public init(items: [DpRuleResponse], page: Page, success: Bool, totalCount: Int) {
            self.items = items

            self.page = page

            self.success = success

            self.totalCount = totalCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DpRuleResponse].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
        }
    }
}
