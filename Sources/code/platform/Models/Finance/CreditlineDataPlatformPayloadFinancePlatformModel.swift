

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CreditlineDataPlatformPayload
         Used By: Finance
     */

    class CreditlineDataPlatformPayload: Codable {
        public var page: Int?

        public var endEnd: String?

        public var sellerId: String?

        public var startEnd: String?

        public var pagesize: Int?

        public enum CodingKeys: String, CodingKey {
            case page

            case endEnd = "end_end"

            case sellerId = "seller_id"

            case startEnd = "start_end"

            case pagesize
        }

        public init(endEnd: String? = nil, page: Int? = nil, pagesize: Int? = nil, sellerId: String? = nil, startEnd: String? = nil) {
            self.page = page

            self.endEnd = endEnd

            self.sellerId = sellerId

            self.startEnd = startEnd

            self.pagesize = pagesize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Int.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endEnd = try container.decode(String.self, forKey: .endEnd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(String.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startEnd = try container.decode(String.self, forKey: .startEnd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pagesize = try container.decode(Int.self, forKey: .pagesize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(endEnd, forKey: .endEnd)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(startEnd, forKey: .startEnd)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)
        }
    }
}
