

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: CompanyStoreView_Response
         Used By: Logistic
     */

    class CompanyStoreView_Response: Codable {
        public var items: [[String: Any]]?

        public var page: [CompanyStoreView_PageItems]

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [[String: Any]]? = nil, page: [CompanyStoreView_PageItems]) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: CompanyStoreView_Response
         Used By: Logistic
     */

    class CompanyStoreView_Response: Codable {
        public var items: [[String: Any]]?

        public var page: [CompanyStoreView_PageItems]

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [[String: Any]]? = nil, page: [CompanyStoreView_PageItems]) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
