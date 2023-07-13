

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CreditlineDataPlatformResponse
         Used By: Finance
     */

    class CreditlineDataPlatformResponse: Codable {
        public var items: [[String: Any]]?

        public var message: String?

        public var code: Int?

        public var showMr: Bool?

        public var itemCount: Int?

        public var page: [String: Any]?

        public var headers: [String]?

        public enum CodingKeys: String, CodingKey {
            case items

            case message

            case code

            case showMr = "show_mr"

            case itemCount = "item_count"

            case page

            case headers
        }

        public init(code: Int? = nil, headers: [String]? = nil, items: [[String: Any]]? = nil, itemCount: Int? = nil, message: String? = nil, page: [String: Any]? = nil, showMr: Bool? = nil) {
            self.items = items

            self.message = message

            self.code = code

            self.showMr = showMr

            self.itemCount = itemCount

            self.page = page

            self.headers = headers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showMr = try container.decode(Bool.self, forKey: .showMr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCount = try container.decode(Int.self, forKey: .itemCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode([String].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(showMr, forKey: .showMr)

            try? container.encodeIfPresent(itemCount, forKey: .itemCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(headers, forKey: .headers)
        }
    }
}
