

import Foundation
public extension PlatformClient {
    /*
         Model: Invoices
         Used By: Billing
     */

    class Invoices: Codable {
        public var data: [InvoicesData]?

        public var start: Int?

        public var end: Int?

        public var limit: Int?

        public var page: Int?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case data

            case start

            case end

            case limit

            case page

            case total
        }

        public init(data: [InvoicesData]? = nil, end: Int? = nil, limit: Int? = nil, page: Int? = nil, start: Int? = nil, total: Int? = nil) {
            self.data = data

            self.start = start

            self.end = end

            self.limit = limit

            self.page = page

            self.total = total
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([InvoicesData].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(Int.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(Int.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                limit = try container.decode(Int.self, forKey: .limit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Int.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }
}
