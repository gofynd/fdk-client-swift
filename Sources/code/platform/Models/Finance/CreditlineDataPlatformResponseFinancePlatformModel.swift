

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CreditlineDataPlatformResponse
         Used By: Finance
     */

    class CreditlineDataPlatformResponse: Codable {
        public var code: Int?

        public var items: [[String: Any]]?

        public var message: String?

        public var showMr: Bool?

        public var itemCount: Int?

        public var headers: [String]?

        public var page: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case items

            case message

            case showMr = "show_mr"

            case itemCount = "item_count"

            case headers

            case page
        }

        public init(code: Int? = nil, headers: [String]? = nil, items: [[String: Any]]? = nil, itemCount: Int? = nil, message: String? = nil, page: [String: Any]? = nil, showMr: Bool? = nil) {
            self.code = code

            self.items = items

            self.message = message

            self.showMr = showMr

            self.itemCount = itemCount

            self.headers = headers

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                headers = try container.decode([String].self, forKey: .headers)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(showMr, forKey: .showMr)

            try? container.encodeIfPresent(itemCount, forKey: .itemCount)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
