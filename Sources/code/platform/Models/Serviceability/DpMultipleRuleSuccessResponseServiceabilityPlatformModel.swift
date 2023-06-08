

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpMultipleRuleSuccessResponse
         Used By: Serviceability
     */

    class DpMultipleRuleSuccessResponse: Codable {
        public var page: Page

        public var totalCount: Int

        public var items: [DpRuleResponse]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case page

            case totalCount = "total_count"

            case items

            case success
        }

        public init(items: [DpRuleResponse], page: Page, success: Bool, totalCount: Int) {
            self.page = page

            self.totalCount = totalCount

            self.items = items

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            items = try container.decode([DpRuleResponse].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

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
        public var page: Page

        public var totalCount: Int

        public var items: [DpRuleResponse]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case page

            case totalCount = "total_count"

            case items

            case success
        }

        public init(items: [DpRuleResponse], page: Page, success: Bool, totalCount: Int) {
            self.page = page

            self.totalCount = totalCount

            self.items = items

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            items = try container.decode([DpRuleResponse].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
